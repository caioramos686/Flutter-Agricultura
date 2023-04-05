import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';


class ConsultaCertVacinacaoCompulsoriaView extends StatefulWidget {
  const ConsultaCertVacinacaoCompulsoriaView({Key? key}) : super(key: key);

  @override
  _ConsultaCertVacinacaoCompulsoriaViewState createState() => _ConsultaCertVacinacaoCompulsoriaViewState();
}

class _ConsultaCertVacinacaoCompulsoriaViewState extends State<ConsultaCertVacinacaoCompulsoriaView> {
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
          title: Text("Certificado de Vacinação Compulsória", style: TextStyle(fontSize: 14.sp)),
        ),
        body: TabBarView(
          children: [
            TabViewRetornoConsulta(
              children: [
                adicionarTextInfo("Autenticaçao: ", dados.codAutenticacao.toString()),
                adicionarTextInfo("Nome da Propriedade: ", dados.nomePropriedade.toString()),
                adicionarTextInfo("Nome do Produtor: ", dados.nomeProdutor.toString()),
                adicionarTextInfo("CPF/CNPJ: ", dados.cpfCnpjProdutor.toString()),
                adicionarTextInfo("Nome do Estabelecimento:", dados.nomeEstabelecimento),
                adicionarTextInfo("tipo de Registro:", dados.tipoRegistro),
                adicionarRow("Código da Propriedade:", "Codigo da AP:"),
                adicionarRowComNegrito(dados.codPropriedade.toString(), dados.codAp.toString()),
                adicionarRow("Município:", "ID:"),
                adicionarRowComNegrito(dados.municipioPropriedade.toString(), dados.id.toString()),
                adicionarRow("Data da Emissão:", "Data da Validade:"),
                adicionarRowComNegrito(dados.dataEmissao.toString(), dados.dataValidade.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
