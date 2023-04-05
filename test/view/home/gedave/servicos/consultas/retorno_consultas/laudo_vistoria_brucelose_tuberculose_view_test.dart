import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/laudo_vistoria_brucelose_tuberculose_model.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/laudo_vistoria_brucelose_tuberculose_view.dart';

void main() {
  testWidgets('Verifica se a View LaudoVistoriaBruceloseTuberculoseView funciona', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
              builder: (_) => ConsultaLaudoVistoriaBruceloseTuberculoseView(),
              settings: RouteSettings(
                arguments: ParametrosRetornoConsulta(LaudoVistoriaBruceloseTuberculoseModel(
                    tipoLocal: '',
                    nomeRazaoSocial: '',
                    cpfCnpj: '',
                    endereco: '',
                    numero: '',
                    complemento: '',
                    bairro: '',
                    cep: '',
                    municipio: '',
                    uf: '',
                    listaVeterinario: [
                      ListaVeterinario(cpf: '', nome: '', crmv: '', numeroHabilitacaoMapa: '', situacaoHabilitacao: '', veterinarioPrincipal: '')
                    ],
                    favBruceloseTal: '',
                    favBruceloseAat: '',
                    favTuberculose: '',
                    listaLaudoVistoria: [ListaLaudoVistoria(ordem: 0, nomeColunaBanco: '', descricaoItem: '', conforme: '')])),
              ));
        },
      ),
    ));

    expect(find.byType(ConsultaLaudoVistoriaBruceloseTuberculoseView), findsOneWidget);
  });
}
