import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/consulta_certificado_sanitario_animal_model.dart';
import 'package:gedave/view_model/gedave/consulta_certificado_sanitario_animal_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    ConsultaCertificadoSanitarioAnimalModel dataFetched =
    await fetchConsultaCertificadoSanitarioAnimal('eac7631bd998289a21edc14e284eedcf', 'http://34.176.203.169/consultaCertificadoSanitarioAnimal/');
    expect(dataFetched.uf, 'São Paulo');
  });
}
