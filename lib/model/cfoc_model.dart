class CfocModel {
  CfocModel({
    required this.id,
    required this.codigo,
    required this.codigoBarras,
    required this.codigoUC,
    required this.produtorNome,
    required this.produtorCpfCnpj,
    required this.propriedadeNome,
    required this.propriedadeCodigo,
    required this.propriedadeEndereco,
    required this.propriedadeMunicipio,
    required this.propriedadeUf,
    required this.flagPragaQuarentenaria,
    required this.flagPragaNaoQuarentenaria,
    required this.flagPragaEspecifica,
    required this.flagPragaExportacao,
    required this.transpPartidaLacrada,
    required this.rtEmitenteNome,
    required this.rtEmitenteCrea,
    required this.rtEmitenteHabilitacao,
    required this.rtEmitenteFormacao,
    required this.dataEmissao,
    required this.dataVencimento,
    required this.nomeMunicipioEmissao,
    required this.validadeDias,
    required this.produtos,
    required this.declaracoes,
  });

  int? id;
  int? codigo;
  String? codigoBarras;
  int? codigoUC;
  String? produtorNome;
  String? produtorCpfCnpj;
  String? propriedadeNome;
  String? propriedadeCodigo;
  String? propriedadeEndereco;
  String? propriedadeMunicipio;
  String? propriedadeUf;
  bool? flagPragaQuarentenaria;
  bool? flagPragaNaoQuarentenaria;
  bool? flagPragaEspecifica;
  bool? flagPragaExportacao;
  bool? transpPartidaLacrada;
  String? rtEmitenteNome;
  String? rtEmitenteCrea;
  String? rtEmitenteHabilitacao;
  String? rtEmitenteFormacao;
  String? dataEmissao;
  String? dataVencimento;
  String? nomeMunicipioEmissao;
  int? validadeDias;
  List<Produtos>? produtos;
  List<Declaracoes>? declaracoes;

  CfocModel.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    codigo = json["codigo"] ?? 0;
    codigoBarras = json["codigoBarras"] ?? "";
    codigoUC = json["codigoUC"] ?? 0;
    produtorNome = json["produtorNome"] ?? "";
    produtorCpfCnpj = json["produtorCpfCnpj"] ?? "";
    propriedadeNome = json["propriedadeNome"] ?? "";
    propriedadeCodigo = json["propriedadeCodigo"] ?? "";
    propriedadeEndereco = json["propriedadeEndereco"] ?? "";
    propriedadeMunicipio = json["propriedadeMunicipio"] ?? "";
    propriedadeUf = json["propriedadeUf"] ?? "";
    flagPragaQuarentenaria = json["flagPragaQuarentenaria"] ?? false;
    flagPragaNaoQuarentenaria = json["flagPragaNaoQuarentenaria"] ?? false;
    flagPragaEspecifica = json["flagPragaEspecifica"] ?? false;
    flagPragaExportacao = json["flagPragaExportacao"] ?? false;
    transpPartidaLacrada = json["transpPartidaLacrada"] ?? false;
    rtEmitenteNome = json["rtEmitenteNome"] ?? "";
    rtEmitenteCrea = json["rtEmitenteCrea"] ?? "";
    rtEmitenteHabilitacao = json["rtEmitenteHabilitacao"] ?? "";
    rtEmitenteFormacao = json["rtEmitenteFormacao"] ?? "";
    dataEmissao = json["dataEmissao"] ?? "";
    dataVencimento = json["dataVencimento"] ?? "";
    nomeMunicipioEmissao = json["nomeMunicipioEmissao"] ?? "";
    validadeDias = json["validadeDias"] ?? 0;
    produtos = List.from(json["produtos"]).map((e) => Produtos.fromJson(e)).toList();
    declaracoes = List.from(json["declaracoes"]).map((e) => Declaracoes.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["id"] = id;
    _data["codigo"] = codigo;
    _data["codigoBarras"] = codigoBarras;
    _data["codigoUC"] = codigoUC;
    _data["produtorNome"] = produtorNome;
    _data["produtorCpfCnpj"] = produtorCpfCnpj;
    _data["propriedadeNome"] = propriedadeNome;
    _data["propriedadeCodigo"] = propriedadeCodigo;
    _data["propriedadeEndereco"] = propriedadeEndereco;
    _data["propriedadeMunicipio"] = propriedadeMunicipio;
    _data["propriedadeUf"] = propriedadeUf;
    _data["flagPragaQuarentenaria"] = flagPragaQuarentenaria;
    _data["flagPragaNaoQuarentenaria"] = flagPragaNaoQuarentenaria;
    _data["flagPragaEspecifica"] = flagPragaEspecifica;
    _data["flagPragaExportacao"] = flagPragaExportacao;
    _data["transpPartidaLacrada"] = transpPartidaLacrada;
    _data["rtEmitenteNome"] = rtEmitenteNome;
    _data["rtEmitenteCrea"] = rtEmitenteCrea;
    _data["rtEmitenteHabilitacao"] = rtEmitenteHabilitacao;
    _data["rtEmitenteFormacao"] = rtEmitenteFormacao;
    _data["dataEmissao"] = dataEmissao;
    _data["dataVencimento"] = dataVencimento;
    _data["nomeMunicipioEmissao"] = nomeMunicipioEmissao;
    _data["validadeDias"] = validadeDias;
    _data["produtos"] = produtos!.map((e) => e.toJson()).toList();
    _data["declaracoes"] = declaracoes!.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Produtos {
  Produtos({
    required this.id,
    required this.codigoLote,
    required this.nomeProduto,
    required this.quantidade,
    required this.unidadeDeMedida,
    required this.dataConsolidacao,
    required this.validadeDocumento,
  });

  int? id;
  int? codigoLote;
  String? nomeProduto;
  String? quantidade;
  String? unidadeDeMedida;
  String? dataConsolidacao;
  String? validadeDocumento;

  Produtos.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    codigoLote = json["codigoLote"] ?? 0;
    nomeProduto = json["nomeProduto"] ?? "";
    quantidade = json["quantidade"] ?? "";
    unidadeDeMedida = json["unidadeDeMedida"] ?? "";
    dataConsolidacao = json["dataConsolidacao"] ?? "";
    validadeDocumento = json["validadeDocumento"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["id"] = id;
    _data["codigoLote"] = codigoLote;
    _data["nomeProduto"] = nomeProduto;
    _data["quantidade"] = quantidade;
    _data["unidadeDeMedida"] = unidadeDeMedida;
    _data["dataConsolidacao"] = dataConsolidacao;
    _data["validadeDocumento"] = validadeDocumento;
    return _data;
  }
}

class Declaracoes {
  Declaracoes({
    required this.id,
    required this.descricao,
  });

  int? id;
  String? descricao;

  Declaracoes.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    descricao = json["descricao"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["id"] = id;
    _data["descricao"] = descricao;
    return _data;
  }
}
