import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gedave/model/propriedades_gedave.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';

class GtaView extends StatefulWidget {
  const GtaView({Key? key}) : super(key: key);

  @override
  _GtaViewState createState() => _GtaViewState();
}

class _GtaViewState extends State<GtaView> {
  @override
  Widget build(BuildContext context) {
    ModelsGedave models = ModelsGedave();
    return Scaffold(
        appBar: AppBar(
          title: FittedBox(fit: BoxFit.fitWidth, child: Text("Guia de Trânsito Animal")),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/gedave/servicos", arguments: ParametrosConsulta(models.gta));
                },
                child: const Text("Consultar GTA")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/gedave/gta/cadastro", arguments: ParametrosConsulta(models.gta));
                },
                child: const Text("Cadastrar GTA")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/gedave/gta/emissao", arguments: ParametrosConsulta(models.gta));
                },
                child: const Text("Emissão GTA"))
          ]),
        )));
  }
}
