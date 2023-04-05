import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/cert_vacinacao_compulsoria_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    CertVacinacaoCompulsoriaModel model = CertVacinacaoCompulsoriaModel(
        id: 0,
        codAutenticacao: '',
        nomeEstabelecimento: '',
        tipoRegistro: '',
        codPropriedade: 0,
        nomePropriedade: '',
        codAp: 0,
        nomeProdutor: '',
        cpfCnpjProdutor: '',
        municipioPropriedade: '',
        dataValidade: '',
        dataEmissao: '');

    String modelType = model.toJson().runtimeType.toString();
    expect(modelType, "_InternalLinkedHashMap<String, dynamic>");
  });
}
