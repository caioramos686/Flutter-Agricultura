import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/consulta_certificado_promotor_eventos_concentracao_animal_model.dart';
import 'package:gedave/view_model/gedave/consulta_certificado_promotor_eventos_concentracao_animal_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    ConsultaCertificadoPromotorEventosConcentracaoAnimalModel dataFetched = await fetchConsultaCertificadoPromotorEventosConcentracaoAnimal(
        'fe56ff96dbcd46bf705dfebf06f0f680', 'http://34.176.203.169//consultaCertificadoPromotorEventosConcentracaoAnimal/');
    expect(dataFetched.statusPessoaJuridica, 'Ativo');
  });
}
