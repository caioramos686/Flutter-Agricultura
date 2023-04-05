import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/cfoc_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    CfocModel model = CfocModel(
        rtEmitenteHabilitacao: '',
        flagPragaExportacao: true,
        dataEmissao: '',
        validadeDias: 0,
        propriedadeUf: '',
        codigoBarras: '',
        flagPragaQuarentenaria: true,
        id: 0,
        declaracoes: [Declaracoes(id: 0, descricao: '')],
        produtorCpfCnpj: '',
        produtos: [Produtos(id: 0, codigoLote: 0, nomeProduto: '', quantidade: '', unidadeDeMedida: '', dataConsolidacao: '', validadeDocumento: '')],
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
        dataVencimento: '',
        nomeMunicipioEmissao: '',
        transpPartidaLacrada: false,
        codigoUC: 0);

    String modelType = model.toJson().runtimeType.toString();
    expect(modelType, "_InternalLinkedHashMap<String, dynamic>");
  });
}
