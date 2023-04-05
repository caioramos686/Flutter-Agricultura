import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/consultas_widget.dart';

void main() {
  testWidgets("Testa animação consulta", (WidgetTester tester) async {
    tester.pumpWidget(MaterialApp(home: Scaffold(body: AnimacaoConsulta())));
  });
}
