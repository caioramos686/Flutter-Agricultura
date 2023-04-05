import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gedave/model/propriedades_cadastros.dart';
import 'package:gedave/model/propriedades_gedave.dart';
import 'package:sizer/sizer.dart';

import 'gedave_widget.dart';

class GedaveView extends StatefulWidget {
  const GedaveView({Key? key}) : super(key: key);

  @override
  _GedaveViewState createState() => _GedaveViewState();
}

class _GedaveViewState extends State<GedaveView> {
  @override
  Widget build(BuildContext context) {
    var modelsConsulta = ModelsGedave();
    var modelsCadastro = ModelsCadastro();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 50.sp,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'GEDAVE',
                style: TextStyle(fontSize: 13.sp),
              ),
              //Text("GEDAVE"),
              Text(
                'Gestão de Defesa Animal e Vegetal',
                style: TextStyle(fontSize: 9.sp),
              ),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Vertente Vegetal",
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
              Tab(
                child: Text(
                  "Vertente Animal",
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
              Tab(
                child: Text(
                  "Administração",
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          TabViewGedave(children: [
            BotaoConsulta(model: modelsConsulta.cfo),
            BotaoConsulta(model: modelsConsulta.cfoc),
            BotaoConsulta(model: modelsConsulta.ptv),
          ]),
          TabViewGedave(children: [
            BotaoGta(model: modelsConsulta.gta),
            BotaoConsulta(model: modelsConsulta.vacCompulsoria),
            BotaoConsulta(model: modelsConsulta.atestadoBrucTub),
            BotaoConsulta(model: modelsConsulta.laudoBrucTub),
            BotaoConsulta(model: modelsConsulta.certSanitarioAnimal),
            BotaoConsulta(model: modelsConsulta.certAvesVivas),
            BotaoConsulta(model: modelsConsulta.certInsumosVet),
            BotaoConsulta(model: modelsConsulta.certEventosAnimais),
          ]),
          TabViewGedave(children: [
            BotaoCadastro(model: modelsCadastro.cadastroPessoaFisica),
            BotaoCadastro(model: modelsCadastro.cadastroPessoaJuridica),
          ])
        ]),
      ),
    );
  }
}
