import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/laudo_vistoria_brucelose_tuberculose_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () async {
    LaudoVistoriaBruceloseTuberculoseModel model = LaudoVistoriaBruceloseTuberculoseModel(
        tipoLocal: '',
        nomeRazaoSocial: '',
        cpfCnpj: '',
        endereco: '',
        numero: '',
        complemento: '',
        bairro: '',
        cep: '',
        municipio: '',
        uf: '',
        listaVeterinario: [ListaVeterinario(cpf: '', nome: '', crmv: '', numeroHabilitacaoMapa: '', situacaoHabilitacao: '', veterinarioPrincipal: '')],
        favBruceloseTal: '',
        favBruceloseAat: '',
        favTuberculose: '',
        listaLaudoVistoria: [ListaLaudoVistoria(ordem: 0, nomeColunaBanco: '', descricaoItem: '', conforme: '')]);

    String modelType = model.toJson().runtimeType.toString();
    expect(modelType, "_InternalLinkedHashMap<String, dynamic>");
  });
}
