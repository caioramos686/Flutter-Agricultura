import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/ptv_model.dart';
import 'package:gedave/view_model/gedave/ptv_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    PtvModel dataFetched = await fetchPtv('35040048318082015600204010241069022', 'http://34.176.203.169/ptv/');
    expect(dataFetched.id, 42099);
  });
}
