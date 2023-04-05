import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/view/home/gedave/gedave_view.dart';

void main() {
  testWidgets("Localiza os widgets na Gedave", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: GedaveView()));
  });
}
