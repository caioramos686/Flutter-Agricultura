import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/consulta_certificado_promotor_eventos_concentracao_animal_model.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/consulta_certificado_promotor_eventos_concentracao_animal_view.dart';

void main() {
  testWidgets('Verifica se a View ConsultaCertificadoPromotorEventosConcentracaoAnimalView funciona', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
              builder: (_) => ConsultaCertificadoPromotorEventosConcentracaoAnimalView(),
              settings: RouteSettings(
                arguments: ParametrosRetornoConsulta(ConsultaCertificadoPromotorEventosConcentracaoAnimalModel(
                    dataEmissao: '',
                    nomeFantasia: '',
                    nomeUnidadeAdministrativa: '',
                    endereco: '',
                    nomeMunicipio: '',
                    codigoCnpj: '',
                    statusPessoaJuridica: '',
                    dataValidadeRegistroCda: '')),
              ));
        },
      ),
    ));

    expect(find.byType(ConsultaCertificadoPromotorEventosConcentracaoAnimalView), findsOneWidget);
  });
}
