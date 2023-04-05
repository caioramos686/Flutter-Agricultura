import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';


class ConsultaCfocView extends StatefulWidget {
  const ConsultaCfocView({Key? key}) : super(key: key);

  @override
  _ConsultaCfocViewState createState() => _ConsultaCfocViewState();
}

class _ConsultaCfocViewState extends State<ConsultaCfocView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ParametrosRetornoConsulta;
    final dados = args.dados;

    List<dynamic> dadosDeclaracao = dados.declaracoes;
    List<dynamic> dadosProduto = dados.produtos;

    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title:  Text("Certificado Fitossanitário de Origem Consolidada", style: TextStyle(fontSize: 14.sp), maxLines: 2,),
              bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(text: "Origem"),
                  Tab(text: "Produtos"),
                  Tab(text: "Declarações"),
                  Tab(text: "Responsável Técnico"),
                ],
              )),
          body: TabBarView(
            children: [
              TabViewRetornoConsulta(
                children: [
                  adicionarTextInfo("Número do CFOC: ", dados.codigo.toString()),
                  adicionarTextInfo("Unidade de Consolidação: ", dados.codigoUC.toString()),
                  adicionarTextInfo("Nome Empresarial: ", dados.produtorNome.toString()),
                  adicionarTextInfo("Endereço: ", dados.propriedadeEndereco.toString()),
                  adicionarRow("Município: ", "UF:"),
                  adicionarRowComNegrito(dados.propriedadeMunicipio.toString(), dados.propriedadeUf.toString()),
                  adicionarTextInfo("CNPJ: ", dados.produtorCpfCnpj.toString()),
                  adicionarTextInfo("Validade: ", dados.dataVencimento.toString()),
                  adicionarTextInfo("Código de Barras: ", dados.codigoBarras.toString()),
                  adicionarTextInfo("Partida lacrada: ", respostaSimouNao(dados.transpPartidaLacrada)),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  for (var produtos in dadosProduto) produtosCFOC(produtos),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  for (var declaracao in dadosDeclaracao) declaracoesCFOC(declaracao),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  adicionarTextInfo("Nome: ", dados.rtEmitenteNome),
                  adicionarTextInfo("CREA: ", dados.rtEmitenteCrea),
                  adicionarTextInfo("Número da Habilitação: ", dados.rtEmitenteHabilitacao),
                ],
              ),
            ],
          ),
        ));
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

produtosCFOC(dynamic produto) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      adicionarTextInfo("Código do Lote: ", parametroNulo(produto.codigoLote)),
      adicionarTextInfo("Produto: ", parametroNulo(produto.nomeProduto)),
      adicionarRow("Quantidade:", "Unidade de medida:"),
      adicionarRowComNegrito(parametroNulo(produto.quantidade), parametroNulo(produto.unidadeDeMedida)),
      adicionarTextInfo("Data de Consolidação do Lote: ", parametroNulo(produto.dataConsolidacao)),
      divisor(),
    ],
  );
}

declaracoesCFOC(dynamic declaracoes) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      adicionarTextInfo("Declaração: ", parametroNulo(declaracoes.descricao)),
      divisor(),
    ],
  );
}

respostaSimouNao(dynamic parametro) {
  if (parametro == true || parametro == 'true') {
    return "Sim";
  } else {
    return "Não";
  }
}

parametroNulo(dynamic parametro) {
  if (parametro == null || parametro == 'null') {
    return "Não informado";
  } else {
    return parametro.toString();
  }
}
