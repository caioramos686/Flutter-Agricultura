import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/consulta_certificado_comercio_aves_vivas_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    ConsultaCertificadoComercioAvesVivasModel model = ConsultaCertificadoComercioAvesVivasModel(
        dataEmissao: '',
        nomeFantasia: '',
        nomeUnidadeAdministrativa: '',
        endereco: '',
        nomeMunicipio: '',
        codigoCnpj: '',
        statusPessoaJuridica: '',
        dataValidadeRegistroCda: '');

    String modelType = model.toJson().runtimeType.toString();
    expect(modelType, "_InternalLinkedHashMap<String, dynamic>");
  });
}
