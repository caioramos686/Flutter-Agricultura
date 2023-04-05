class ConsultaCertificadoSanitarioAnimalModel {
  ConsultaCertificadoSanitarioAnimalModel({
    required this.numero,
    required this.propriedade,
    required this.proprietario,
    required this.produtores,
    required this.municipio,
    required this.dataEmissao,
    required this.cadastroServicoOficial,
    required this.cpfCnpjProprietario,
    required this.uf,
    required this.dataValidade,
  });

  String? numero;
  String? propriedade;
  String? proprietario;
  String? produtores;
  String? municipio;
  String? dataEmissao;
  String? cadastroServicoOficial;
  String? cpfCnpjProprietario;
  String? uf;
  String? dataValidade;

  ConsultaCertificadoSanitarioAnimalModel.fromJson(Map<String, dynamic> json) {
    numero = json["numero"] ?? "";
    propriedade = json["propriedade"] ?? "";
    proprietario = json["proprietario"] ?? "";
    produtores = json["produtores"] ?? "";
    municipio = json["municipio"] ?? "";
    dataEmissao = json["dataEmissao"] ?? "";
    cadastroServicoOficial = json["cadastroServicoOficial"] ?? "";
    cpfCnpjProprietario = json["cpfCnpjProprietario"] ?? "";
    uf = json["uf"] ?? "";
    dataValidade = json["dataValidade"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["numero"] = numero;
    _data["propriedade"] = propriedade;
    _data["proprietario"] = proprietario;
    _data["produtores"] = produtores;
    _data["municipio"] = municipio;
    _data["dataEmissao"] = dataEmissao;
    _data["cadastroServicoOficial"] = cadastroServicoOficial;
    _data["cpfCnpjProprietario"] = cpfCnpjProprietario;
    _data["uf"] = uf;
    _data["dataValidade"] = dataValidade;
    return _data;
  }
}
