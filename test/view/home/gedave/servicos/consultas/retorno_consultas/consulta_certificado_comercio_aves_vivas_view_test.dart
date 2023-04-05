import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/consulta_certificado_comercio_aves_vivas_model.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/consulta_certificado_comercio_aves_vivas_view.dart';

void main() {
  testWidgets('Verifica se a View ConsultaCertificadoComercioAvesVivasModel funciona', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
              builder: (_) => ConsultaCertificadoComercioAvesVivasView(),
              settings: RouteSettings(
                arguments: ParametrosRetornoConsulta(ConsultaCertificadoComercioAvesVivasModel(
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

    expect(find.byType(ConsultaCertificadoComercioAvesVivasView), findsOneWidget);
  });
}
