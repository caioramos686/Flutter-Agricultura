import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/view/home/home_view.dart';
import 'package:gedave/view/home/home_widget.dart';

void main() {
  testWidgets("Localiza os widgets na home", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeView()));

    final Finder carouselFinder = find.byType(CarouselSlider);
    expect(carouselFinder, findsOneWidget);

    final Finder botaoRedirecionamentoInternoFinder = find.byType(BotaoRedirecionamentoInterno);
    expect(botaoRedirecionamentoInternoFinder, findsOneWidget);

    final Finder slider = find.byType(Row);
    expect(slider, findsOneWidget);

    final Finder botaoConsultaGedave = find.text("GEDAVE");
    expect(botaoConsultaGedave, findsOneWidget);

    final listFinder = find.byType(GridView);

    final Finder botaoMercadoDigital = find.text("MERCADO DIGIT@L");
    await tester.dragUntilVisible(botaoMercadoDigital, listFinder, Offset(0, -50));
    expect(botaoMercadoDigital, findsOneWidget);

    final Finder botaoRotasRurais = find.text("ROTAS RURAIS");
    await tester.dragUntilVisible(botaoRotasRurais, listFinder, Offset(0, -50));
    expect(botaoRotasRurais, findsOneWidget);

    final Finder botaoCreditoAgro = find.text("CRÉDITO AGRO");
    await tester.dragUntilVisible(botaoCreditoAgro, listFinder, Offset(0, -50));
    expect(botaoCreditoAgro, findsOneWidget);

    final Finder botaoSicar = find.text("SICAR");
    await tester.dragUntilVisible(botaoSicar, listFinder, Offset(0, -50));
    expect(botaoSicar, findsOneWidget);

    final Finder botaoPdam = find.text("PDAM");
    await tester.dragUntilVisible(botaoPdam, listFinder, Offset(0, -50));
    expect(botaoPdam, findsOneWidget);


  });
}
