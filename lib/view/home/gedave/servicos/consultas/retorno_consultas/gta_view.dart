import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';

class ConsultaGtaView extends StatefulWidget {
  const ConsultaGtaView({Key? key}) : super(key: key);

  @override
  _ConsultaGtaViewState createState() => _ConsultaGtaViewState();
}

class _ConsultaGtaViewState extends State<ConsultaGtaView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ParametrosRetornoConsulta;
    final dados = args.dados;

    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Dados da GTA'),
                Tab(text: 'Procedência'),
                Tab(text: 'Destino'),
                Tab(text: 'Rebanho Bovídeos Bovino'),
                Tab(text: 'Finalidade'),
                Tab(text: 'Emissão'),
              ],
            ),
            title: Text("Pesquisa de GTA", style: TextStyle(fontSize: 14.sp)),
          ),
          body: TabBarView(
            children: [
              TabViewRetornoConsulta(
                children: [
                  adicionarTextInfo("Número Cadastro e-GTA", dados.numeroCadastro.toString()),
                  adicionarTextInfo("UF//Número e-GTA", dados.numero.toString()),
                  adicionarTextInfo("Série", dados.serie.toString()),
                  adicionarTextInfo("Código de Barras", dados.codigoDeBarras.toString()),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  adicionarTextInfo("Nome: ", dados.nomeOrigem.toString()),
                  adicionarTextInfo("CPF: ", dados.cpfCnpjOrigemFormatado.toString()),
                  adicionarTextInfo("Estabelecimento: ", dados.estabelecimentoOrigem.toString()),
                  adicionarTextInfo("Código Estabelecimento: ", dados.codigoEstabelecimentoOrigem.toString()),
                  adicionarRow("Município:", "UF:"),
                  adicionarRowComNegrito(dados.municipioOrigem, dados.ufOrigem.toString()),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  adicionarTextInfo("Nome: ", dados.nomeDestino.toString()),
                  adicionarTextInfo("CPF: ", dados.cpfCnpjDestinoFormatado),
                  adicionarTextInfo("Estabelecimento: ", dados.estabelecimentoDestino.toString().toString()),
                  adicionarTextInfo("Código Estabelecimento: ", dados.codigoEstabelecimentoDestino.toString().toString()),
                  adicionarRow("Município:", "UF:"),
                  adicionarRowComNegrito(dados.municipioDestino, dados.ufDestino.toString()),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  //////////bovideo//////////////
                  adicionarRow("Grupo", "ID"),
                  adicionarRowComNegrito(dados.bovideo.nomeGrupo.toString(), dados.bovideo.idSubgrupo.toString()),
                  adicionarRow("Macho(s)", "Fêmea(s)"),
                  adicionarRowComNegrito(dados.bovideo.totalFaixa2Macho.toString(), dados.bovideo.totalFaixa2Femea.toString()),
                  const Divider(),
                  adicionarRow("Grupo", "Total"),
                  adicionarRowComNegrito(dados.bovideo.nomeSubgrupo.toString(), dados.bovideo.totalporExtenso.toString()),
                  adicionarRow("Macho(s)", "Fêmea(s)"),
                  adicionarRowComNegrito(dados.bovideo.totalMacho.toString(), dados.bovideo.totalFemea.toString()),
                  adicionarTextInfo("Total de Animais", dados.bovideo.totalAnimais.toString()),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  adicionarRowComNegrito("Status: ", dados.interfaceStatus.toString()),
                  adicionarRowComNegrito("Finalidade: ", dados.finalidade.toString()),
                  adicionarRowComNegrito("A Pé: ", respostaSimouNao(dados.transportePe.toString())),
                  adicionarRowComNegrito("Rodoviário: ", respostaSimouNao(dados.transporteRodoviario.toString())),
                  adicionarRowComNegrito("Ferroviário: ", respostaSimouNao(dados.transporteFerroviario.toString())),
                  adicionarRowComNegrito("Aéreo: ", respostaSimouNao(dados.transporteAereo.toString())),
                  adicionarRowComNegrito("Marítimo Fluvial: ", respostaSimouNao(dados.transporteMaritimo.toString())),
                  adicionarRowComNegrito("Marítimo Fluvial: ", respostaSimouNao(dados.transporteMaritimo.toString())),
                ],
              ),
              TabViewRetornoConsulta(
                children: [
                  adicionarTextInfo("Emitente: ", dados.nomeEmitente.toString()),
                  adicionarTextInfo("Unidade Expedidora: ", dados.nomeUaExpeditora.toString()),
                  adicionarTextInfo("Local: ", dados.municipioEmissao.toString()),
                  adicionarTextInfo("Data da Emissão: ", dados.dataEmissaoGta.toString()),
                  adicionarTextInfo("Fone: ", dados.telefoneUaExpeditora.toString()),
                  adicionarTextInfo("E-mai: ", dados.emailUaExpeditora.toString()),
                  adicionarTextInfo("Status: ", dados.statusGta.toString()),
                ],
              ),
            ],
          )),
    );
  }
}

respostaSimouNao(dynamic parametro) {
  if (parametro == true || parametro == 'true') {
    return "Sim";
  } else {
    return "Não";
  }
}
