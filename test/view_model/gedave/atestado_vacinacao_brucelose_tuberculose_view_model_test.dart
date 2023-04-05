import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/atestado_vacinacao_brucelose_tuberculose_model.dart';
import 'package:gedave/view_model/gedave/atestado_vacinacao_brucelose_tuberculose_view_model.dart';

void main() {
  test('Deve conseguir realizar uma consulta, e validar os dados.', () async {
    AtestadoVacinacaoBruceloseTuberculoseModel dataFetched =
    await fetchAtestadoVacinacaoBruceloseTuberculose('d60fabeb4861dca820a18ff90ac63607', 'http://34.176.203.169/atestadoRealizacaoBruceloseTuberculose/');
    expect(dataFetched.brucelose!.dados!.numero, '0000001/2020');
  });
}
