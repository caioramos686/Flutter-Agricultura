class CertVacinacaoCompulsoriaModel {
  CertVacinacaoCompulsoriaModel({
    required this.id,
    required this.codAutenticacao,
    required this.nomeEstabelecimento,
    required this.tipoRegistro,
    required this.codPropriedade,
    required this.nomePropriedade,
    required this.codAp,
    required this.nomeProdutor,
    required this.cpfCnpjProdutor,
    required this.municipioPropriedade,
    required this.dataValidade,
    required this.dataEmissao,
  });

  int? id;
  String? codAutenticacao;
  String? nomeEstabelecimento;
  String? tipoRegistro;
  int? codPropriedade;
  String? nomePropriedade;
  int? codAp;
  String? nomeProdutor;
  String? cpfCnpjProdutor;
  String? municipioPropriedade;
  String? dataValidade;
  String? dataEmissao;

  CertVacinacaoCompulsoriaModel.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    codAutenticacao = json["codAutenticacao"] ?? "";
    nomeEstabelecimento = json["nomeEstabelecimento"] ?? "";
    tipoRegistro = json["tipoRegistro"] ?? "";
    codPropriedade = json["codPropriedade"] ?? 0;
    nomePropriedade = json["nomePropriedade"] ?? "";
    codAp = json["codAp"] ?? 0;
    nomeProdutor = json["nomeProdutor"] ?? "";
    cpfCnpjProdutor = json["cpfCnpjProdutor"] ?? "";
    municipioPropriedade = json["municipioPropriedade"] ?? "";
    dataValidade = json["dataValidade"] ?? "";
    dataEmissao = json["dataEmissao"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["id"] = id;
    _data["codAutenticacao"] = codAutenticacao;
    _data["nomeEstabelecimento"] = nomeEstabelecimento;
    _data["tipoRegistro"] = tipoRegistro;
    _data["codPropriedade"] = codPropriedade;
    _data["nomePropriedade"] = nomePropriedade;
    _data["codAp"] = codAp;
    _data["nomeProdutor"] = nomeProdutor;
    _data["cpfCnpjProdutor"] = cpfCnpjProdutor;
    _data["municipioPropriedade"] = municipioPropriedade;
    _data["dataValidade"] = dataValidade;
    _data["dataEmissao"] = dataEmissao;
    return _data;
  }
}
