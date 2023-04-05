import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/cert_vacinacao_compulsoria_model.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/cert_vacinacao_compulsoria_view.dart';

void main() {
  testWidgets('Verifica se a View CertVacinacaoCompulsoriaView funciona', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
              builder: (_) => ConsultaCertVacinacaoCompulsoriaView(),
              settings: RouteSettings(
                arguments: ParametrosRetornoConsulta(CertVacinacaoCompulsoriaModel(
                    id: 0,
                    codAutenticacao: '',
                    nomeEstabelecimento: '',
                    tipoRegistro: '',
                    codPropriedade: 0,
                    nomePropriedade: '',
                    codAp: 0,
                    nomeProdutor: '',
                    cpfCnpjProdutor: '',
                    municipioPropriedade: '',
                    dataValidade: '',
                    dataEmissao: '')),
              ));
        },
      ),
    ));

    expect(find.byType(ConsultaCertVacinacaoCompulsoriaView), findsOneWidget);
  });
}
