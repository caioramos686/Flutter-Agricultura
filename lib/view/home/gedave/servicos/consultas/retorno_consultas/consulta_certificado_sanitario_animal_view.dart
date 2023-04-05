import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';


class ConsultaCertificadoSanitarioAnimalView extends StatefulWidget {
  const ConsultaCertificadoSanitarioAnimalView({Key? key}) : super(key: key);

  @override
  _ConsultaCertificadoSanitarioAnimalViewState createState() => _ConsultaCertificadoSanitarioAnimalViewState();
}

class _ConsultaCertificadoSanitarioAnimalViewState extends State<ConsultaCertificadoSanitarioAnimalView> {
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
              tabs: [Tab(text: "Dados do Certificado:")],
            ),
            title: FittedBox(fit: BoxFit.fitWidth, child: Text("Certificado Sanitário Animal", style: TextStyle(fontSize: 14.sp))),
          ),
          body: TabBarView(
            children: [
              TabViewRetornoConsulta(
                children: [
                  adicionarTextInfo('Certificado Sanitário Animal Nº', dados.numero),
                  adicionarTextInfo('Proprietario', dados.proprietario),
                  adicionarTextInfo('Propriedade', dados.propriedade),
                  adicionarTextInfo('Produtores da Propriedade', dados.produtores),
                  adicionarRow('Município', 'UF'),
                  adicionarRowComNegrito(
                    dados.municipio.toString(),
                    dados.uf.toString(),
                  ),
                  adicionarTextInfo('Cadastro no Serviço Oficial', dados.cadastroServicoOficial),
                  adicionarTextInfo('CPF/CNPJ dos Produtores', dados.cpfCnpjProprietario),
                  adicionarRow('Data de emissão', 'Data de validade'),
                  //UF
                  adicionarRowComNegrito(
                    dados.dataEmissao,
                    dados.dataValidade,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    this.isExpanded = false,
  });

  String expandedValue;
  bool isExpanded;
}
