import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/consulta_certificado_sanitario_animal_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    ConsultaCertificadoSanitarioAnimalModel model = ConsultaCertificadoSanitarioAnimalModel(
        propriedade: '',
        cadastroServicoOficial: '',
        cpfCnpjProprietario: '',
        proprietario: '',
        numero: '',
        uf: '',
        municipio: '',
        dataValidade: '',
        produtores: '',
        dataEmissao: '');

    String modelType = model.toJson().runtimeType.toString();
    expect(modelType, "_InternalLinkedHashMap<String, dynamic>");
  });
}
