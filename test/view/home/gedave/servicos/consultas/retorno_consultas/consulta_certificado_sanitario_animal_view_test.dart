import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/consulta_certificado_sanitario_animal_model.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/consulta_certificado_sanitario_animal_view.dart';

void main() {
  testWidgets('Verifica se a View ConsultaCertificadoSanitarioAnimalView funciona', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
              builder: (_) => ConsultaCertificadoSanitarioAnimalView(),
              settings: RouteSettings(
                arguments: ParametrosRetornoConsulta(ConsultaCertificadoSanitarioAnimalModel(
                    propriedade: '',
                    cadastroServicoOficial: '',
                    cpfCnpjProprietario: '',
                    proprietario: '',
                    numero: '',
                    uf: '',
                    municipio: '',
                    dataValidade: '',
                    produtores: '',
                    dataEmissao: '')),
              ));
        },
      ),
    ));

    expect(find.byType(ConsultaCertificadoSanitarioAnimalView), findsOneWidget);
  });
}
