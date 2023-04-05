import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/view/cores.dart';

void main() {
  test('Valida valores das cores', () {

    expect(Cores.azul, const Color.fromRGBO(30, 79, 156, 1));
    expect(Cores.azulEscuro,  const Color.fromRGBO(28, 34, 59, 0.99));
    expect(Cores.verde, const Color.fromRGBO(84, 146, 53, 1));
    expect(Cores.corBloco, const Color.fromRGBO(229, 228, 226, 1));
    expect(Cores.corDetalhes,const Color.fromRGBO(334, 191, 18, 1));
    expect(Cores.corPrincipal, const Color.fromRGBO(84, 130, 53, 1));

  });
}
