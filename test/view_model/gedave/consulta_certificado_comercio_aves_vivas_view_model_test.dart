import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/consulta_certificado_comercio_aves_vivas_model.dart';
import 'package:gedave/view_model/gedave/consulta_certificado_comercio_aves_vivas_view_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    ConsultaCertificadoComercioAvesVivasModel dataFetched =
    await fetchCertificadoComercioAvesVivas('fe8412024dbab83f6b7618e924125d3d', 'http://34.176.203.169/consultaCertificadoComercioAvesVivas/');
    expect(dataFetched.statusPessoaJuridica, 'Ativo');
  });
}
