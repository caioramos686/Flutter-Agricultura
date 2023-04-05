import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/cfo_model.dart';
import 'package:gedave/view_model/gedave/cfo_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    CfoModel dataFetched = await fetchCfo('35000001101012017235903031300000009', 'http://34.176.203.169/cfo/');
    expect(dataFetched.id, 45309);
  });
}
