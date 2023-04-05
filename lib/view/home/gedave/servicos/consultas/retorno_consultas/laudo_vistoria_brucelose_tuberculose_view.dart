import 'package:flutter/material.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/retorno_consultas_widget.dart';
import 'package:sizer/sizer.dart';

import '../consultas_view.dart';


class ConsultaLaudoVistoriaBruceloseTuberculoseView extends StatefulWidget {
  const ConsultaLaudoVistoriaBruceloseTuberculoseView({Key? key}) : super(key: key);

  @override
  _ConsultaLaudoVistoriaBruceloseTuberculoseViewState createState() => _ConsultaLaudoVistoriaBruceloseTuberculoseViewState();
}

class _ConsultaLaudoVistoriaBruceloseTuberculoseViewState extends State<ConsultaLaudoVistoriaBruceloseTuberculoseView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ParametrosRetornoConsulta;
    final dados = args.dados;

    List<dynamic> veterinarios = dados.listaVeterinario;
    List<dynamic> dadosLaudo = dados.listaLaudoVistoria;

    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Teste de Brucelose e Tuberculose'),
              Tab(text: 'Veterinário(s) Vinculado(s)'),
              Tab(text: 'Dados Laudo de Vistoria'),
            ],
          ),
          title: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text("Laudo de Vistoria de Local de Realização de Testes de Brucelose e Tuberculose", style: TextStyle(fontSize: 14.sp))),
        ),
        body: TabBarView(
          children: [
            TabViewRetornoConsulta(
              children: [
                adicionarTextInfo("Tipo Local:", dados.tipoLocal),
                adicionarTextInfo("Nome/Razão Social:", dados.nomeRazaoSocial),
                adicionarTextInfo("CNPJ:", dados.cpfCnpj),
                adicionarRow("Endereço:", "Número:"),
                adicionarRowComNegrito(dados.endereco, dados.numero),
                adicionarRow("Bairro: ", "Cep: "),
                adicionarRowComNegrito(dados.bairro, dados.cep),
                adicionarRow("Município", "UF:"),
                adicionarRowComNegrito(dados.municipio, dados.uf),
                adicionarTextInfo("Complemento:", dados.complemento),
              ],
            ),
            TabViewRetornoConsulta(
              children: [
                for (var vet in veterinarios) atestadoVeterinariosVinculados(vet),
              ],
            ),
            TabViewRetornoConsulta(
              children: [
                const ListTile(
                  title: Text('Ítens Fiscalizados', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black)),
                  trailing: Text('Condições', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black)),
                ),
                divisor(),
                for (var laudo in dadosLaudo) atestadoLaudoTuberculose(laudo),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

atestadoLaudoTuberculose(dynamic laudo) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        title: Text(laudo.descricaoItem),
        trailing: Text(respostaConforme(laudo.conforme)),
      ),
      divisor(),
    ],
  );
}

atestadoVeterinariosVinculados(dynamic veterinarios) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      adicionarTextInfo("CPF:", veterinarios.cpf),
      adicionarTextInfo("Nome:", veterinarios.nome),
      adicionarTextInfo("CRMV/SP:", veterinarios.crmv),
      adicionarTextInfo("Nº Habilitação MAPA:", veterinarios.numeroHabilitacaoMapa),
      adicionarTextInfo("Veterinário Principal:", veterinarios.veterinarioPrincipal),
      adicionarTextInfo("Situação:", veterinarios.situacaoHabilitacao),
      divisor(),
    ],
  );
}

respostaConforme(dynamic parametro) {
  if (parametro == "C") {
    return "Conforme";
  } else {
    return "Não Conforme";
  }
}
