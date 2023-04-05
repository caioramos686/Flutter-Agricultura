import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/propriedades_gedave.dart';
import 'package:gedave/view/home/gedave/servicos/scanner_view.dart';



void main () {
  print("ok");
}

/*
void main() {
  testWidgets('Testa se a tela de scanner é exibida corretamente', (tester) async {
    var models = ModelsGedave();

    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
            builder: (_) => ScannerView(),
            settings: RouteSettings(arguments: ParametrosScanner(models.gta)),
          );
        },
      ),
    ));

    expect(find.byType(ScannerView), findsOneWidget);
  });
}
*/