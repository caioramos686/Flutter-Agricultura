import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/view/home/home_view.dart';

void main() {
  testWidgets("Verifica a exibição do Drawer na home", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeView()));

    final Finder drawer = find.byType(IconButton);
    await tester.tap(drawer);
    expect(drawer, findsOneWidget);

    await tester.pumpAndSettle();
    final Finder listTileDrawer = find.byType(ListTile);
    expect(listTileDrawer, findsNWidgets(5));

    final Finder listViewDrawer = find.byType(ListView);
    expect(listViewDrawer, findsOneWidget);
  });
}
