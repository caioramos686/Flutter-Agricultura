import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/cfo_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    CfoModel model = CfoModel(
        rtEmitenteHabilitacao: '',
        nspPartidaLacrada: true,
        flagPragaExportacao: true,
        dataEmissao: '',
        validadeDias: 0,
        municipioEmissao: '',
        propriedadeUf: '',
        codigoBarras: '',
        flagPragaQuarentenaria: true,
        id: 0,
        declaracoes: [Declaracoes(id: 0, descricao: '')],
        produtorCpfCnpj: '',
        produtos: [
          Produtos(id: 0, codigoUp: 0, nomeProduto: '', quantidade: '', unidadeMedida: '', dataInicioColheita: '', dataFimColheita: '', validadeDocumento: '')
        ],
        flagPragaNaoQuarentenaria: true,
        rtEmitenteNome: '',
        codigo: 0,
        rtEmitenteFormacao: '',
        propriedadeMunicipio: '',
        propriedadeEndereco: '',
        flagPragaEspecifica: false,
        produtorNome: '',
        propriedadeNome: '',
        propriedadeCodigo: '',
        rtEmitenteCrea: '',
        dataVencimento: '');

    String modelType = model.toJson().runtimeType.toString();
    expect(modelType, "_InternalLinkedHashMap<String, dynamic>");
  });
}
