import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';

class ConsultaCertificadoComercioProdutosInsumosVetView extends StatefulWidget {
  const ConsultaCertificadoComercioProdutosInsumosVetView({Key? key}) : super(key: key);

  @override
  _ConsultaCertificadoComercioProdutosInsumosVetViewState createState() => _ConsultaCertificadoComercioProdutosInsumosVetViewState();
}

class _ConsultaCertificadoComercioProdutosInsumosVetViewState extends State<ConsultaCertificadoComercioProdutosInsumosVetView> {
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
          title: FittedBox(fit: BoxFit.fitWidth, child: Text("Certificado Veterinário", style: TextStyle(fontSize: 14.sp))),
          centerTitle: true,
        ),
        body: TabViewRetornoConsulta(
          children: [
            adicionarTextInfo("Codigo CNPJ: ", dados.codigoCnpj.toString()),
            adicionarTextInfo("Data de Emissao: ", dados.dataEmissao.toString()),
            adicionarTextInfo("Data de Validade do Registro Cda: ", dados.dataValidadeRegistroCda.toString()),
            adicionarTextInfo("Endereco: ", dados.endereco.toString()),
            const SizedBox(height: 10),
            adicionarTextInfo("Nome Fantasia: ", dados.nomeFantasia.toString()),
            adicionarTextInfo("Municipio: ", dados.nomeMunicipio.toString()),
            adicionarRow("Unidade Administrativa: ", "Status: "),
            adicionarRowComNegrito(dados.nomeUnidadeAdministrativa.toString(), dados.statusPessoaJuridica.toString()),
          ],
        ),
      ),
    );
  }
}
