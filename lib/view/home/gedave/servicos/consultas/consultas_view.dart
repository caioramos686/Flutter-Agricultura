import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gedave/view/cores.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import 'retorno_consultas/consultas_widget.dart';
import '../scanner_view.dart';

class ConsultasView extends StatefulWidget {
  const ConsultasView({Key? key}) : super(key: key);

  @override
  _ConsultasViewState createState() => _ConsultasViewState();
}

class _ConsultasViewState extends State<ConsultasView> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ParametrosConsulta;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50.sp,
        title: FittedBox(fit: BoxFit.fitWidth, child: Text(args.model['label'], style: TextStyle(fontSize: 16.sp))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            adicionarListTileConsulta(args.model['icone'], args.model['descricao'], context),
            const Divider(
              thickness: 2,
            ),
            Container(
              padding: EdgeInsets.only(top: screenHeight * 0.02, left: screenWidth * 0.05, right: screenWidth * 0.05),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(args.model['tamanhoCodigo']),
                  ],
                  controller: myController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este campo não pode ser vazio';
                    }
                    if (value.length != args.model['tamanhoCodigo']) {
                      return 'Este campo precisa ter ${args.model['tamanhoCodigo']} dígitos';
                    }
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Cores.azul)),
                    border: const OutlineInputBorder(borderSide: BorderSide()),
                    labelText: "Digite o código de barras",
                    labelStyle: TextStyle(color: Cores.azul, fontSize: 2.4.h),
                    hintStyle: TextStyle(color: Cores.azul),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: screenHeight * 0.01)),
            ElevatedButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [const Text("CONSULTAR"), Padding(padding: EdgeInsets.only(right: screenWidth * 0.02)), const Icon(Icons.search)],
                ),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Cores.azul)),
                onPressed: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                  var futureData = args.model['model'](myController.text, args.model['url']);

                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return const AnimacaoConsulta();
                        });

                    futureData.whenComplete(() async {
                      var dados = await futureData;

                      if (dados == null) {
                        Navigator.pop(context);
                        snackBarConsultas(context, myController.text);
                      } else {
                        Navigator.popAndPushNamed(context, args.model['rota'], arguments: ParametrosRetornoConsulta(dados));
                      }
                    });
                  }
                }),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * .02, bottom: screenHeight * .02),
              child: Text(
                "OU",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Cores.azul,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * .02, bottom: screenHeight * .02),
              child: Text(
                "Escaneie o QR code:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Cores.azul),
              ),
            ),
            IconButton(
              iconSize: screenWidth * 0.35,
              onPressed: () async {
                FocusScopeNode currentFocus = FocusScope.of(context);

                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
                await Future.delayed(const Duration(milliseconds: 400));
                Navigator.pushNamed(context, '/scanner', arguments: ParametrosScanner(args.model));
              },
              icon: Image.asset('assets/icons/QrScanner.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class ParametrosRetornoConsulta {
  final dynamic dados;

  ParametrosRetornoConsulta(this.dados);
}

class ParametrosConsulta {
  final Map model;

  ParametrosConsulta(this.model);
}
