class ConsultaCertificadoComercioAvesVivasModel {
  ConsultaCertificadoComercioAvesVivasModel({
    required this.nomeFantasia,
    required this.codigoCnpj,
    required this.endereco,
    required this.nomeMunicipio,
    required this.nomeUnidadeAdministrativa,
    required this.dataEmissao,
    required this.dataValidadeRegistroCda,
    required this.statusPessoaJuridica,
  });

  String? nomeFantasia;
  String? codigoCnpj;
  String? endereco;
  String? nomeMunicipio;
  String? nomeUnidadeAdministrativa;
  String? dataEmissao;
  String? dataValidadeRegistroCda;
  String? statusPessoaJuridica;

  ConsultaCertificadoComercioAvesVivasModel.fromJson(Map<String, dynamic> json) {
    nomeFantasia = json["nomeFantasia"] ?? "";
    codigoCnpj = json["codigoCnpj"] ?? "";
    endereco = json["endereco"] ?? "";
    nomeMunicipio = json["nomeMunicipio"] ?? "";
    nomeUnidadeAdministrativa = json["nomeUnidadeAdministrativa"] ?? "";
    dataEmissao = json["dataEmissao"] ?? "";
    dataValidadeRegistroCda = json["dataValidadeRegistroCda"] ?? "";
    statusPessoaJuridica = json["statusPessoaJuridica"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["nomeFantasia"] = nomeFantasia;
    _data["codigoCnpj"] = codigoCnpj;
    _data["endereco"] = endereco;
    _data["nomeMunicipio"] = nomeMunicipio;
    _data["nomeUnidadeAdministrativa"] = nomeUnidadeAdministrativa;
    _data["dataEmissao"] = dataEmissao;
    _data["dataValidadeRegistroCda"] = dataValidadeRegistroCda;
    _data["statusPessoaJuridica"] = statusPessoaJuridica;
    return _data;
  }
}
