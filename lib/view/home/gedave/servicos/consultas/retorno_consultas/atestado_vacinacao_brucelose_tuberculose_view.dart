import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';


class ConsultaAtestadoVacinacaoBruceloseTuberculoseView extends StatefulWidget {
  const ConsultaAtestadoVacinacaoBruceloseTuberculoseView({Key? key}) : super(key: key);

  @override
  _ConsultaAtestadoVacinacaoBruceloseTuberculoseViewState createState() => _ConsultaAtestadoVacinacaoBruceloseTuberculoseViewState();
}

class _ConsultaAtestadoVacinacaoBruceloseTuberculoseViewState extends State<ConsultaAtestadoVacinacaoBruceloseTuberculoseView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ParametrosRetornoConsulta;
    final dados = args.dados;

    List<dynamic> resultadoBrucelose = dados.brucelose.resultadosBrucelose;
    List<dynamic> resultadoTuberculose = dados.tuberculose.resultadosBrucelose;

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Atestado Brucelose e Tuberculose", style: TextStyle(fontSize: 14.sp)),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text("Atestado Brucelose", style: TextStyle(fontSize: 12.sp)),
                ),
                Tab(
                  text: 'Atestado Tuberculose',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TabViewRetornoConsulta(
                children: [
                  const Text('Dados do Atestado'),
                  adicionarTextInfo("Nº Atestado Intraestadual: ", dados.brucelose.dados.numero.toString()),
                  adicionarTextInfo("Data Cadastro:", dados.brucelose.dados.data.toString()),
                  adicionarRow("Tipo de Atestado:", "Situação:"),
                  adicionarRowComNegrito(dados.brucelose.dados.tipo.toString(), dados.brucelose.dados.situacao.toString()),
                  divisor(),
                  const Text('Dados da Propriedade'),
                  adicionarTextInfo("Código Propriedade: ", dados.brucelose.propriedade.codigo.toString()),
                  adicionarTextInfo("Código AP: ", dados.brucelose.propriedade.codigoAp.toString()),
                  adicionarTextInfo("CPF/CNPJ Produtor AP: ", dados.brucelose.propriedade.cpfCnpjProdutorAp.toString()),
                  adicionarTextInfo("Nome Propriedade: ", dados.brucelose.propriedade.nomePropriedade.toString()),
                  adicionarTextInfo("Atividade Produtiva: ", dados.brucelose.propriedade.atividadeProdutiva.toString()),
                  adicionarTextInfo("Nome Produtor: ", dados.brucelose.propriedade.nomeProdutor.toString()),
                  adicionarRow("Rebanho:", "Animais Existentes:"),
                  adicionarRowComNegrito(dados.brucelose.propriedade.rebanho.toString(), dados.brucelose.propriedade.animaisExistentes.toString()),
                  adicionarRow("Município:", "UF:"),
                  adicionarRowComNegrito(dados.brucelose.propriedade.municipio, parametroNulo(dados.brucelose.propriedade.uf.toString())),
                  divisor(),
                  const Text('Dados do Executor do Teste de Rotina'),
                  adicionarTextInfo("Nº Habilitação MAPA: ", dados.brucelose.executor.habilitacaoMapa.toString()),
                  adicionarTextInfo("Nome	: ", dados.brucelose.executor.nome.toString()),
                  adicionarTextInfo("CPF: ", dados.brucelose.executor.cpf.toString()),
                  adicionarTextInfo("CRMV/UF: ", dados.brucelose.executor.crmvuf.toString()),
                  adicionarTextInfo("Proprietária dos Insumos: ", dados.brucelose.executor.proprietariaInsumos.toString()),
                  adicionarTextInfo("Nome/Razão Social	: ", dados.brucelose.executor.razao.toString()),
                  adicionarTextInfo("CPF/CNPJ: ", parametroNulo(dados.brucelose.executor.cpfCnpj.toString())),
                  divisor(),
                  const Text('Dados do Teste de Rotina'),
                  adicionarTextInfo("Tipo de Teste Brucelose ", dados.brucelose.testeBrucelose.tipo.toString()),
                  const Text('Dados do Teste de Rotina'),
                  adicionarTextInfo("Tipo de Teste Brucelose ", dados.brucelose.testeBrucelose.tipo.toString()),
                  adicionarTextInfo("Motivo do Teste: ", dados.brucelose.testeBrucelose.motivo.toString()),
                  adicionarRow("Data Colheita:", "Data Teste:"),
                  adicionarRowComNegrito(parametroNulo(dados.brucelose.testeBrucelose.dataInoculacao.toString()),
                      parametroNulo(dados.brucelose.testeBrucelose.dataLeitura.toString())),
                  divisor(),
                  for (var atestadoB in resultadoBrucelose) atestadoBrucelose(atestadoB),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  const Text('Dados do Atestado'),
                  adicionarTextInfo("Nº Atestado Intraestadual: ", dados.tuberculose.dados.numero.toString()),
                  adicionarTextInfo("Data Cadastro: ", dados.tuberculose.dados.data.toString()),
                  adicionarRow("Tipo de Atestado:", "Situação:"),
                  adicionarRowComNegrito(dados.tuberculose.dados.tipo.toString(), dados.tuberculose.dados.situacao.toString()),
                  divisor(),
                  const Text('Dados da Propriedade'),
                  adicionarTextInfo("Código Propriedade: ", dados.tuberculose.propriedade.codigo.toString()),
                  adicionarTextInfo("Código AP: ", parametroNulo(dados.tuberculose.propriedade.codigoAp.toString())),
                  adicionarTextInfo("CPF/CNPJ Produtor AP: ", parametroNulo(dados.tuberculose.propriedade.cpfCnpjProdutorAp.toString())),
                  adicionarTextInfo("Nome Propriedade: ", dados.tuberculose.propriedade.nomePropriedade.toString()),
                  adicionarTextInfo("Atividade Produtiva: ", dados.tuberculose.propriedade.atividadeProdutiva.toString()),
                  adicionarTextInfo("Nome Produtor: ", dados.tuberculose.propriedade.nomeProdutor.toString()),
                  adicionarRow("Rebanho:", "Animais Existentes:"),
                  adicionarRowComNegrito(dados.tuberculose.propriedade.rebanho.toString(), dados.tuberculose.propriedade.animaisExistentes.toString()),
                  adicionarRow("Município:", "UF:"),
                  adicionarRowComNegrito(dados.tuberculose.propriedade.municipio.toString(), parametroNulo(dados.tuberculose.propriedade.uf.toString())),
                  divisor(),
                  const Text('Dados do Executor do Teste de Rotina'),
                  adicionarTextInfo("Nº Habilitação MAPA: ", dados.tuberculose.executor.habilitacaoMapa.toString()),
                  adicionarTextInfo("Nome	: ", dados.tuberculose.executor.nome.toString()),
                  adicionarTextInfo("CPF: ", dados.tuberculose.executor.cpf.toString()),
                  adicionarTextInfo("CRMV/UF: ", dados.tuberculose.executor.crmvuf.toString()),
                  adicionarTextInfo("Proprietária dos Insumos: ", dados.tuberculose.executor.proprietariaInsumos.toString()),
                  adicionarTextInfo("Nome/Razão Social	: ", dados.tuberculose.executor.razao.toString()),
                  adicionarTextInfo("CPF/CNPJ: ", parametroNulo(dados.tuberculose.executor.cpfCnpj.toString())),
                  divisor(),
                  const Text('Dados do Teste de Rotina'),
                  adicionarTextInfo("Tipo de Teste Tuberculose: ", dados.tuberculose.testeBrucelose.tipo.toString()),
                  adicionarTextInfo("Motivo do Teste: ", dados.tuberculose.testeBrucelose.motivo.toString()),
                  adicionarRow("Data Inoculação:", "Hora Inoculação: "),
                  adicionarRowComNegrito(parametroNulo(dados.tuberculose.testeBrucelose.dataInoculacao.toString()),
                      parametroNulo(dados.tuberculose.testeBrucelose.horaInoculacao.toString())),
                  adicionarRow("Data Leitura:", "Hora Leitura:"),
                  adicionarRowComNegrito(parametroNulo(dados.tuberculose.testeBrucelose.dataLeitura.toString()),
                      parametroNulo(dados.tuberculose.testeBrucelose.horaLeitura.toString())),
                  divisor(),
                  const Text('Resultado Teste Rotina'),
                  for (var atestadoT in resultadoTuberculose) atestadoTuberculose(atestadoT),
                ],
              )
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

atestadoBrucelose(dynamic brucelose) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      adicionarRow("Nº Identificação: ", "Tipo Identificação: "),
      adicionarRowComNegrito(parametroNulo(brucelose.numeroIdentificacao.toString()), parametroNulo(brucelose.tipoIdentificacao.toString())),
      adicionarRow("Raça: ", "Faixa Etária (Meses): "),
      adicionarRowComNegrito(parametroNulo(brucelose.raca.toString()), parametroNulo(brucelose.faixaEtariaMeses.toString())),
      adicionarRow("Sexo: ", "Resultado: "),
      adicionarRowComNegrito(parametroNulo(brucelose.sexo.toString()), parametroNulo(brucelose.resultado.toString())), //
      adicionarTextInfo("Destino dos Reagentes: ", parametroNulo(brucelose.destinoReagentes.toString())),
      adicionarTextInfo("Laboratório 1º Teste Confirmatório: ", parametroNulo(brucelose.labPrimeiroTesteConfirmatorio.toString())),
      adicionarTextInfo("Reteste: ", parametroNulo(brucelose.reteste.toString())),
      divisor(),
    ],
  );
}

atestadoTuberculose(dynamic tuberculose) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      adicionarRow("Nº Identificação: ", "Tipo Identificação: "),
      adicionarRowComNegrito(parametroNulo(tuberculose.numeroIdentificacao.toString()), parametroNulo(tuberculose.tipoIdentificacao.toString())),
      adicionarRow("Raça: ", "Faixa Etária (Meses): "),
      adicionarRowComNegrito(parametroNulo(tuberculose.raca.toString()), parametroNulo(tuberculose.faixaEtariaMeses.toString())),
      adicionarRow("Sexo: ", "PPDA (0 horas): "),
      adicionarRowComNegrito(parametroNulo(tuberculose.sexo.toString()), parametroNulo(tuberculose.ppda0.toString())),
      adicionarRow("PPDA (72 horas): ", "ΔPPDA: "),
      adicionarRowComNegrito(parametroNulo(tuberculose.ppda72.toString()), parametroNulo(tuberculose.ppdaComputada.toString())), //
      adicionarRow("PPDB (0 horas): ", "ΔPPDB: "),
      adicionarRowComNegrito(parametroNulo(tuberculose.ppdb0.toString()), parametroNulo(tuberculose.ppdbComputada.toString())), //
      adicionarRow("Resultado: ", "Destino dos Reagentes: "),
      adicionarRowComNegrito(parametroNulo(tuberculose.resultado.toString()), parametroNulo(tuberculose.destinoReagentes.toString())), //
      adicionarTextInfo("ΔPPDB-ΔPPDA:", parametroNulo(tuberculose.valorPPDAPPDB.toString())),
      adicionarTextInfo("Característica da Reação:", parametroNulo(tuberculose.caracteristicaReacao.toString())),
      adicionarTextInfo("Reteste: ", parametroNulo(tuberculose.reteste.toString())),
      divisor(),
    ],
  );
}

parametroNulo(dynamic parametro) {
  if (parametro == null || parametro == 'null') {
    return "";
  } else {
    return parametro.toString();
  }
}
