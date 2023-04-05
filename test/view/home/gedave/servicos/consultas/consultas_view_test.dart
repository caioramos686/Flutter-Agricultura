import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/propriedades_gedave.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';

void main() {
  testWidgets('Testa se a tela de consultas carrega com as informações das consultas', (tester) async {
    var models = ModelsGedave();

    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
            builder: (_) => ConsultasView(),
            settings: RouteSettings(arguments: ParametrosConsulta(models.gta)),
          );
        },
      ),
    ));

    expect(find.byType(ConsultasView), findsOneWidget);
  });
}
