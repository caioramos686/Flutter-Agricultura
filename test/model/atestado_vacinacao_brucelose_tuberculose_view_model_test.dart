import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/atestado_vacinacao_brucelose_tuberculose_model.dart';

void main() {
  test('Deve conseguir criar um objeto com a tipagem correta e transformar o resultado em um json.', () {
    AtestadoVacinacaoBruceloseTuberculoseModel model = AtestadoVacinacaoBruceloseTuberculoseModel(
        tuberculose: Tuberculose(
            testeBrucelose: TesteBrucelose(horaInoculacao: '', motivo: '', dataLeitura: '', horaLeitura: '', tipo: '', dataInoculacao: ''),
            dados: Dados(situacao: '', numero: '', tipo: '', data: ''),
            resultadosBrucelose: [],
            propriedade: Propriedade(
                nomePropriedade: '',
                municipio: '',
                cpfCnpjProdutorAp: '',
                nomeProdutor: '',
                rebanho: '',
                uf: '',
                animaisExistentes: 0,
                codigoAp: '',
                codigo: '',
                atividadeProdutiva: ''),
            executor: Executor(crmvuf: '', cpf: '', cpfCnpj: '', nome: '', habilitacaoMapa: '', proprietariaInsumos: '', razao: '')),
        brucelose: Brucelose(
            dados: Dados(tipo: '', data: '', situacao: '', numero: ''),
            resultadosBrucelose: [
              ResultadosBrucelose(
                  numeroIdentificacao: '',
                  tipoIdentificacao: '',
                  raca: '',
                  faixaEtariaMeses: '',
                  sexo: '',
                  reteste: '',
                  destinoReagentes: '',
                  labPrimeiroTesteConfirmatorio: '',
                  ppda0: 0,
                  ppda72: 0,
                  ppdb0: 0,
                  qtde2ME: 0,
                  ppdaComputada: 0,
                  ppdbComputada: 0,
                  valorPPDAPPDB: 0,
                  caracteristicaReacao: '',
                  resultado: '')
            ],
            executor: Executor(proprietariaInsumos: '', crmvuf: '', nome: '', habilitacaoMapa: '', cpfCnpj: '', razao: '', cpf: ''),
            propriedade: Propriedade(
                cpfCnpjProdutorAp: '',
                codigo: '',
                animaisExistentes: 0,
                rebanho: '',
                municipio: '',
                atividadeProdutiva: '',
                nomePropriedade: '',
                nomeProdutor: '',
                codigoAp: '',
                uf: ''),
            testeBrucelose: TesteBrucelose(dataLeitura: '', horaLeitura: '', motivo: '', tipo: '', horaInoculacao: '', dataInoculacao: '')));

    String modelType = model.toJson().runtimeType.toString();
    expect(modelType, "_InternalLinkedHashMap<String, dynamic>");
  });
}
