import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/consulta_certificado_comercio_produtos_insumos_vet_model.dart';
import 'package:gedave/view_model/gedave/consulta_certificado_comercio_produtos_insumos_vet_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    ConsultaCertificadoComercioProdutosInsumosVetModel dataFetched = await fetchConsultaCertificadoComercioProdutosInsumosVet(
        'fffb4c03fe9047898fe64c470445e597', 'http://34.176.203.169/consultaCertificadoComercioProdutosInsumosVet/');
    expect(dataFetched.statusPessoaJuridica, 'Ativo');
  });
}
