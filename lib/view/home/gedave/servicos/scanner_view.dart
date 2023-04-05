import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/consultas_widget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'consultas/consultas_view.dart';
import 'consultas/retorno_consultas/retorno_consultas_widget.dart';

class ScannerView extends StatefulWidget {
  const ScannerView({Key? key}) : super(key: key);

  @override
  _ScannerViewState createState() => _ScannerViewState();
}

class _ScannerViewState extends State<ScannerView> with TickerProviderStateMixin {
  final double espessuraLinha = 2;
  final double espessuraContornos = 10;
  final double proporcaoScaner = 0.8;
  var flash = false;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    animationController = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    double firstPosition = (MediaQuery.of(context).size.height / 2) - (MediaQuery.of(context).size.width * proporcaoScaner / 2);
    double lastPosition = (firstPosition + MediaQuery.of(context).size.width * proporcaoScaner) - (espessuraContornos + espessuraLinha);
    animation = Tween<double>(begin: firstPosition, end: lastPosition).animate(animationController);

    animationController.addListener(() {
      if (animationController.isCompleted) {
        setState(() {
          animationController.reverse();
        });
      }
      if (animationController.isDismissed) {
        setState(() {
          animationController.forward();
        });
      }
      setState(() {});
    });

    animationController.forward();

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Scanner"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: [
                    _buildQrView(context),
                    Positioned(
                        bottom: animation.value,
                        left: screenWidth - (screenWidth * .9 - espessuraContornos / 2),
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.red, boxShadow: [
                            BoxShadow(
                              color: Colors.red,
                              spreadRadius: 3,
                              blurRadius: 10,
                            ),
                          ]),
                          width: screenWidth * proporcaoScaner - espessuraContornos,
                          height: espessuraLinha,
                        )),
                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeigth * 0.04),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: FloatingActionButton(
                          backgroundColor: flash ? const Color.fromRGBO(30, 79, 156, 1) : Colors.grey,
                          foregroundColor: flash ? Colors.yellow : Colors.white,
                          onPressed: () {
                            controller.toggleFlash();
                            setState(() {
                              flash = !flash;
                            });
                          },
                          child: const Icon(Icons.flash_on_sharp),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var scanArea = screenWidth * 0.80;

    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(borderWidth: 10, borderColor: const Color.fromRGBO(0, 255, 0, 1), cutOutSize: scanArea),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    var args = ModalRoute.of(context)!.settings.arguments as ParametrosScanner;
    controller.scannedDataStream.listen((scanData) async {
      controller.stopCamera();
      String url = args.model['url'] + scanData.code;
      if (await canLaunch(url)) {
        var futureData = args.model['model'](scanData.code, args.model['url']);

        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return const AnimacaoConsulta();
            });

        futureData.whenComplete(() async {
          Navigator.pop(context);
          var dados = await futureData;

          if (dados == null) {
            Navigator.pop(context);
            snackBarConsultas(context, scanData.code);
          } else {
            Navigator.popAndPushNamed(context, args.model['rota'], arguments: ParametrosRetornoConsulta(dados));
          }
        });
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Could not find viable url'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('Barcode Type: ${describeEnum(scanData.format)}'),
                    Text('Data: ${scanData.code}'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        ).then((value) => controller.resumeCamera());
      }
    });
  }
}

class ParametrosScanner {
  final Map model;

  ParametrosScanner(this.model);
}
