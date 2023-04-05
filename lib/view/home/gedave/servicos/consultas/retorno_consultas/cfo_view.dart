import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';


class ConsultaCfoView extends StatefulWidget {
  const ConsultaCfoView({Key? key}) : super(key: key);

  @override
  _ConsultaCfoViewState createState() => _ConsultaCfoViewState();
}

class _ConsultaCfoViewState extends State<ConsultaCfoView> {
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
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Certificado Fitossanitário de Origem", style: TextStyle(fontSize: 14.sp)),
              ],
            ),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: "Origem"),
                Tab(text: "Produtos"),
                Tab(text: "Declarações"),
                Tab(text: "Responsável Técnico"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TabViewRetornoConsulta(
                children: [
                  adicionarTextInfo("Número do CFO: ", dados.codigo.toString()),
                  adicionarTextInfo("Nome do Produtor/Nome Empresarial: ", dados.produtorNome),
                  adicionarTextInfo("Endereço: ", dados.propriedadeEndereco),
                  adicionarRow('Município:', 'UF:'),
                  adicionarRowComNegrito(dados.propriedadeMunicipio, dados.propriedadeUf),
                  adicionarTextInfo("CNPJ ou CPF: ", dados.produtorCpfCnpj),
                  adicionarTextInfo("Identificação da Propriedade: ", dados.propriedadeCodigo),
                  adicionarTextInfo("Validade: ", dados.dataVencimento),
                  adicionarTextInfo("Partida lacrada na Origem: ", respostaSimouNao(dados.nspPartidaLacrada)),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  for (var produtos in dadosProduto) produtosCFO(produtos),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  for (var declaracao in dadosDeclaracao) declaracoesCFO(declaracao),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  adicionarTextInfo('Nome Responsável Técnico: ', dados.rtEmitenteNome),
                  adicionarTextInfo('Número da Habilitação:  ', dados.rtEmitenteHabilitacao),
                  adicionarTextInfo('CREA: ', dados.rtEmitenteCrea),
                ],
              ),
            ],
          )),
    );
  }
}

produtosCFO(dynamic produto) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      adicionarTextInfo("Código da UP: ", parametroNulo(produto.codigoUp)),
      adicionarTextInfo("Produto: ", parametroNulo(produto.nomeProduto)),
      adicionarRow("Quantidade: ", "Unidade de Medida: "),
      adicionarRowComNegrito(parametroNulo(produto.quantidade), parametroNulo(produto.unidadeMedida)),
      adicionarRow("Inicio Colheita: ", "Fim Colheita:"),
      adicionarRowComNegrito(parametroNulo(produto.dataInicioColheita), parametroNulo(produto.dataFimColheita)),
      divisor(),
    ],
  );
}

declaracoesCFO(dynamic declaracoes) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      adicionarTextInfo("Declaração Adicionais: ", parametroNulo(declaracoes.descricao)),
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
