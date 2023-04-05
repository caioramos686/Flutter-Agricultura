import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';


class ConsultaPtvView extends StatefulWidget {
  const ConsultaPtvView({Key? key}) : super(key: key);

  @override
  _ConsultaPtvViewState createState() => _ConsultaPtvViewState();
}

class _ConsultaPtvViewState extends State<ConsultaPtvView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ParametrosRetornoConsulta;
    final dados = args.dados;

    List<dynamic> dadosProduto = dados.produtos;
    List<dynamic> dadosDeclaracao = dados.declaracoes;

    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Permissão de Trânsito Vegetal", style: TextStyle(fontSize: 14.sp)),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: "Dados do Interessado"),
                Tab(text: "Produtos"),
                Tab(text: "Declarações Adicionais"),
                Tab(text: "Responsável Técnico"),
                Tab(text: "Transporte"),
              ],
            )),
        body: TabBarView(
          children: [
            TabViewRetornoConsulta(
              children: [
                adicionarTextInfo("Nome: ", parametroNulo(dados.interessadoNome)),
                adicionarTextInfo("CPF/CNPJ: ", parametroNulo(dados.interessadoCpfCnpj)),
                adicionarTextInfo("Propriedade: ", parametroNulo(dados.propriedadeNome)),
                adicionarTextInfo("Endereço: ", parametroNulo(dados.propriedadeEndereco)),
                adicionarTextInfo("Município/UF: ", parametroNulo(dados.propriedadeMunicipio) + '/' + parametroNulo(dados.propriedadeUf)),
              ],
            ),
            TabViewRetornoConsulta(
              children: [
                for (var produtos in dadosProduto) produtosPTV(produtos),
                adicionarTextInfo('Data de Validade: ', parametroNulo(dados.dataVencimento)),
                adicionarTextInfo("Partida Lacrada: ", respostaSimouNao(dados.transpPartidaLacrada)),
                adicionarTextInfo("Código de Barras: ", parametroNulo(dados.codigoBarras)),
              ],
            ),
            TabViewRetornoConsulta(
              children: [
                for (var declaracao in dadosDeclaracao) declaracoesPTV(declaracao),
              ],
            ),
            TabViewRetornoConsulta(
              children: [
                adicionarTextInfo("Nome: ", parametroNulo(dados.rtEmitenteNome)),
                adicionarTextInfo("Número da Habilitação: ", parametroNulo(dados.rtEmitenteHabilitacao)),
                adicionarTextInfo("CREA: ", parametroNulo(dados.rtEmitenteCrea)),
              ],
            ),
            TabViewRetornoConsulta(
              children: [
                adicionarTextInfo("Tipo de Transporte: ", dados.tipoTransporte),
                adicionarTextInfo("Rota de Trânsito Definida: ", respostaSimouNao(dados.rotaDefinida)),
                adicionarTextInfo("Apresentação de Nota Fiscal: ", respostaSimouNao(dados.apresentacaoNotaFiscal) + ', ' + dados.numeroNotaFiscal),
                adicionarTextInfo("Identificação do Veículo (Placa): ", dados.identificacaoVeiculo.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

produtosPTV(dynamic produto) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      adicionarTextInfo("Produto: ", parametroNulo(produto.id)),
      adicionarTextInfo('Quantidade: ', parametroNulo(produto.quantidade).replaceAll('.', ',')),
      adicionarTextInfo('Unidade de Medida: ', parametroNulo(produto.unidadeMedida).replaceAll('.', ',')),
      adicionarTextInfo('Número do Documento: ', parametroNulo(produto.descricaoOrigem)),
      adicionarTextInfo('Tipo de Documento: ', parametroNulo(produto.descricaoOrigem)),
      divisor(),
    ],
  );
}

declaracoesPTV(dynamic declaracoes) {
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
