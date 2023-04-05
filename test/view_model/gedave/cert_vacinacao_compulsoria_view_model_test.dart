import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/cert_vacinacao_compulsoria_model.dart';
import 'package:gedave/view_model/gedave/cert_vacinacao_compulsoria_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    CertVacinacaoCompulsoriaModel dataFetched =
    await fetchCertVacinacaoCompulsoria('0000e91a61ad785d656520d457641c9a', 'http://34.176.203.169//certVacinacaoCompulsoria/');
    expect(dataFetched.id, 65579);
  });
}
