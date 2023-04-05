import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';


class ConsultaCertificadoPromotorEventosConcentracaoAnimalView extends StatefulWidget {
  const ConsultaCertificadoPromotorEventosConcentracaoAnimalView({
    Key? key,
  }) : super(key: key);

  @override
  _ConsultaCertificadoPromotorEventosConcentracaoAnimalViewState createState() => _ConsultaCertificadoPromotorEventosConcentracaoAnimalViewState();
}

class _ConsultaCertificadoPromotorEventosConcentracaoAnimalViewState extends State<ConsultaCertificadoPromotorEventosConcentracaoAnimalView> {
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
          title: FittedBox(fit: BoxFit.fitWidth, child: Text("Certificado Promotor de Eventos", style: TextStyle(fontSize: 14.sp))),
        ),
        body: TabBarView(
          children: [
            TabViewRetornoConsulta(
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
          ],
        ),
      ),
    );
  }
}
