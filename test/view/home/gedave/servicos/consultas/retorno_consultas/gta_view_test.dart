import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/gta_model.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/gta_view.dart';

void main() {
  testWidgets('Verifica se a View GTAView funciona', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
              builder: (_) => ConsultaGtaView(),
              settings: RouteSettings(
                  arguments: ParametrosRetornoConsulta(GtaModel(
                      numeroCadastro: 0,
                      numero: 0,
                      serie: '',
                      bovideo: Bovideo(
                          totalFaixa2Femea: 0,
                          nomeSubgrupo: '',
                          totalFaixa2Macho: 0,
                          nomeGrupo: '',
                          totalFemea: 0,
                          idSubgrupo: 0,
                          totalporExtenso: '',
                          totalMacho: 0,
                          totalAnimais: 0),
                      cpfCnpjOrigemFormatado: '',
                      cpfCnpjDestinoFormatado: '',
                      nomeOrigem: '',
                      nomeDestino: '',
                      estabelecimentoOrigem: '',
                      estabelecimentoDestino: '',
                      codigoEstabelecimentoOrigem: '',
                      codigoEstabelecimentoDestino: '',
                      municipioOrigem: '',
                      municipioDestino: '',
                      ufDestino: '',
                      ufOrigem: '',
                      finalidade: '',
                      interfaceStatus: '',
                      transportePe: false,
                      transporteRodoviario: false,
                      transporteFerroviario: false,
                      transporteAereo: false,
                      transporteMaritimo: false,
                      dataVacinaFebreAftosa1: 0,
                      dataVacinaFebreAftosa2: 0,
                      dataVacinacao1: 0,
                      dataVacinacao2: 0,
                      dataVacinacao3: 0,
                      nomeVacinacao1: '',
                      nomeVacinacao2: '',
                      nomeVacinacao3: '',
                      atestadoExame1: '',
                      atestadoExame1OK: false,
                      atestadoExame2: '',
                      atestadoExame2OK: false,
                      atestadoExame3OK: false,
                      atestadoExame4OK: false,
                      atestadoExame5OK: false,
                      exameBrucelose: false,
                      exameTuberculose: false,
                      numeroLacre: '',
                      observacao: '',
                      numeroNotaFiscal: '',
                      tipoEmitente: '',
                      municipioEmissao: '',
                      dataValidadeGta: 0,
                      dataEmissaoGta: 0,
                      telefoneEmissao: '',
                      codigoDeBarras: '',
                      outraFinalidade: false,
                      nomeUaExpeditora: '',
                      telefoneUaExpeditora: '',
                      emailUaExpeditora: '',
                      municipioUaExpeditora: '',
                      nomeEmitente: '',
                      statusGta: '',
                      coordenadaGeograficaOrigem: '',
                      coordenadaGeograficaDestino: '',
                      codOrigem: '',
                      codDestino: ''))));
        },
      ),
    ));

    expect(find.byType(ConsultaGtaView), findsOneWidget);
  });
}
