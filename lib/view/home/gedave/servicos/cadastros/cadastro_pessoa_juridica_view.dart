import 'package:flutter/material.dart';

class CadastroPessoaJuridicaView extends StatefulWidget {
  const CadastroPessoaJuridicaView({Key? key}) : super(key: key);

  @override
  _CadastroPessoaJuridicaViewState createState() => _CadastroPessoaJuridicaViewState();
}

class _CadastroPessoaJuridicaViewState extends State<CadastroPessoaJuridicaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
      "Pessoa Jurídica",
    )));
  }
}
