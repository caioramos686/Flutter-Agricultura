import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/cfoc_model.dart';
import 'package:gedave/view_model/gedave/cfoc_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    CfocModel dataFetched = await fetchCfoc('35000001201012018935903031300000000', 'http://34.176.203.169/cfoc/');
    expect(dataFetched.id, 54989);
  });
}
