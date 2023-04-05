import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/ptv_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    PtvModel model = PtvModel(
        id: 0,
        codigo: 0,
        codigoBarras: '',
        interessadoNome: '',
        interessadoCpfCnpj: '',
        destinatarioNome: '',
        destinatarioCpfCnpj: '',
        destinatarioEndereco: '',
        destinatarioMunicipio: '',
        destinatarioUf: '',
        propriedadeNome: '',
        propriedadeEndereco: '',
        propriedadeMunicipio: '',
        propriedadeUf: '',
        transpPartidaLacrada: false,
        rtEmitenteNome: '',
        rtEmitenteCrea: '',
        rtEmitenteHabilitacao: '',
        rtEmitenteFormacao: '',
        rtUa: '',
        dataEmissao: '',
        dataVencimento: '',
        municipioEmissao: '',
        apresentacaoNotaFiscal: false,
        numeroNotaFiscal: '',
        rotaDefinida: false,
        tipoTransporte: '',
        identificacaoVeiculo: '',
        validadeDias: 0,
        produtos: [Produtos(id: 0, nomeProduto: '', quantidade: '', unidadeMedida: '', validadeDocumento: '', descricaoOrigem: '')],
        declaracoes: [Declaracoes(id: 0, descricao: '')]);

    String modelType = model.toJson().runtimeType.toString();
    expect(modelType, "_InternalLinkedHashMap<String, dynamic>");
  });
}
