import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../../../cores.dart';
import '../consultas_view.dart';

class ConsultaCertificadoComercioAvesVivasView extends StatefulWidget {
  const ConsultaCertificadoComercioAvesVivasView({Key? key}) : super(key: key);

  @override
  _ConsultaCertificadoComercioAvesVivasViewState createState() => _ConsultaCertificadoComercioAvesVivasViewState();
}

class _ConsultaCertificadoComercioAvesVivasViewState extends State<ConsultaCertificadoComercioAvesVivasView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ParametrosRetornoConsulta;
    final dados = args.dados;

    return DefaultTabController(
      length: 1,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [Tab(text: "Dados do Certificado: ")],
            ),
            title: FittedBox(fit: BoxFit.fitWidth, child: Text("Certificado de Comércio de Aves Vivas", style: TextStyle(fontSize: 14.sp))),
          ),
          body: Center(
            child: Container(
                color: Cores.corBloco,
                height: MediaQuery.of(context).size.height * 0.72,
                width: MediaQuery.of(context).size.width * 0.88,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      adicionarTextInfo("Nome Fantasia: ", dados.nomeFantasia),
                      adicionarTextInfo("CNPJ: ", dados.codigoCnpj.toString()),
                      adicionarTextInfo("Endereço: ", dados.endereco.toString()),
                      adicionarTextInfo("Município: ", dados.nomeMunicipio.toString()),
                      adicionarTextInfo("Escritório de Defesa Agropecuária: ", dados.nomeUnidadeAdministrativa.toString()),
                      adicionarTextInfo("Data de Emissão: ", dados.dataEmissao.toString()),
                      adicionarTextInfo("Data de Validade: ", dados.dataValidadeRegistroCda.toString()),
                      adicionarTextInfo("Situação Jurídica: ", dados.statusPessoaJuridica.toString()),
                    ],
                  ),
                )),
          )),
    );
  }
}
