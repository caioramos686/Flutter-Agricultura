import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/laudo_vistoria_brucelose_tuberculose_model.dart';
import 'package:gedave/view_model/gedave/laudo_vistoria_brucelose_tuberculose_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    LaudoVistoriaBruceloseTuberculoseModel dataFetched =
    await fetchLaudoVistoriaBruceloseTuberculose('ff4f2ac7f7a539ff5a3424b48f745889', 'http://34.176.203.169/laudoVistoriaBruceloseTuberculose/');
    expect(dataFetched.uf, "SP");
  });
}
