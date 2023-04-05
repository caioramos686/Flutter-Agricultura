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

    await tester.enterText(find.widgetWithText(TextFormField, 'Digite o código de barras'), '123');
    await tester.tap(find.widgetWithText(ElevatedButton, 'CONSULTAR'));
    expect(find.text("Este campo precisa ter 44 dígitos"), findsOneWidget);

    await tester.pumpAndSettle();
    await tester.enterText(find.widgetWithText(TextFormField, 'Digite o código de barras'), '35015932381030720120100000032092540000000000');
    await tester.tap(find.widgetWithText(ElevatedButton, 'CONSULTAR'));
    await tester.pump(Duration(seconds: 4));

    expect(find.byType(SnackBar), findsOneWidget);
    await tester.tap(find.byType(SnackBar));

    expect(find.byType(ConsultasView), findsOneWidget);
  });
}
