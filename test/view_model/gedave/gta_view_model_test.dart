import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/gta_model.dart';
import 'package:gedave/view_model/gedave/gta_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    GtaModel dataFetched = await fetchGta('35015932381030720120100000032092540056518018', 'http://34.176.203.169/gta/');
    expect(dataFetched.numero, 593238);
  });
}
