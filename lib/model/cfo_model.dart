class CfoModel {
  CfoModel({
    required this.id,
    required this.codigo,
    required this.codigoBarras,
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
    required this.nspPartidaLacrada,
    required this.rtEmitenteNome,
    required this.rtEmitenteCrea,
    required this.rtEmitenteHabilitacao,
    required this.rtEmitenteFormacao,
    required this.dataEmissao,
    required this.dataVencimento,
    required this.validadeDias,
    required this.municipioEmissao,
    required this.produtos,
    required this.declaracoes,
  });

  int? id;
  int? codigo;
  String? codigoBarras;
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
  bool? nspPartidaLacrada;
  String? rtEmitenteNome;
  String? rtEmitenteCrea;
  String? rtEmitenteHabilitacao;
  String? rtEmitenteFormacao;
  String? dataEmissao;
  String? dataVencimento;
  int? validadeDias;
  String? municipioEmissao;
  List<Produtos>? produtos;
  List<Declaracoes>? declaracoes;

  CfoModel.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    codigo = json["codigo"] ?? 0;
    codigoBarras = json["codigoBarras"] ?? "";
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
    nspPartidaLacrada = json["nspPartidaLacrada"] ?? false;
    rtEmitenteNome = json["rtEmitenteNome"] ?? "";
    rtEmitenteCrea = json["rtEmitenteCrea"] ?? "";
    rtEmitenteHabilitacao = json["rtEmitenteHabilitacao"] ?? "";
    rtEmitenteFormacao = json["rtEmitenteFormacao"] ?? "";
    dataEmissao = json["dataEmissao"] ?? "";
    dataVencimento = json["dataVencimento"] ?? "";
    validadeDias = json["validadeDias"] ?? 0;
    municipioEmissao = json["municipioEmissao"] ?? "";
    produtos = List.from(json["produtos"]).map((e) => Produtos.fromJson(e)).toList();
    declaracoes = List.from(json["declaracoes"]).map((e) => Declaracoes.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["id"] = id;
    _data["codigo"] = codigo;
    _data["codigoBarras"] = codigoBarras;
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
    _data["nspPartidaLacrada"] = nspPartidaLacrada;
    _data["rtEmitenteNome"] = rtEmitenteNome;
    _data["rtEmitenteCrea"] = rtEmitenteCrea;
    _data["rtEmitenteHabilitacao"] = rtEmitenteHabilitacao;
    _data["rtEmitenteFormacao"] = rtEmitenteFormacao;
    _data["dataEmissao"] = dataEmissao;
    _data["dataVencimento"] = dataVencimento;
    _data["validadeDias"] = validadeDias;
    _data["municipioEmissao"] = municipioEmissao;
    _data["produtos"] = produtos!.map((e) => e.toJson()).toList();
    _data["declaracoes"] = declaracoes!.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Produtos {
  Produtos({
    required this.id,
    required this.codigoUp,
    required this.nomeProduto,
    required this.quantidade,
    required this.unidadeMedida,
    required this.dataInicioColheita,
    required this.dataFimColheita,
    required this.validadeDocumento,
  });

  int? id;
  int? codigoUp;
  String? nomeProduto;
  String? quantidade;
  String? unidadeMedida;
  String? dataInicioColheita;
  String? dataFimColheita;
  String? validadeDocumento;

  Produtos.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    codigoUp = json["codigoUp"] ?? 0;
    nomeProduto = json["nomeProduto"] ?? "";
    quantidade = json["quantidade"] ?? "";
    unidadeMedida = json["unidadeMedida"] ?? "";
    dataInicioColheita = json["dataInicioColheita"] ?? "";
    dataFimColheita = json["dataFimColheita"] ?? "";
    validadeDocumento = json["validadeDocumento"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["id"] = id;
    _data["codigoUp"] = codigoUp;
    _data["nomeProduto"] = nomeProduto;
    _data["quantidade"] = quantidade;
    _data["unidadeMedida"] = unidadeMedida;
    _data["dataInicioColheita"] = dataInicioColheita;
    _data["dataFimColheita"] = dataFimColheita;
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
