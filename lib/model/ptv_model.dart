class PtvModel {
  PtvModel({
    required this.id,
    required this.codigo,
    required this.codigoBarras,
    required this.interessadoNome,
    required this.interessadoCpfCnpj,
    required this.destinatarioNome,
    required this.destinatarioCpfCnpj,
    required this.destinatarioEndereco,
    required this.destinatarioMunicipio,
    required this.destinatarioUf,
    required this.propriedadeNome,
    required this.propriedadeEndereco,
    required this.propriedadeMunicipio,
    required this.propriedadeUf,
    required this.transpPartidaLacrada,
    required this.rtEmitenteNome,
    required this.rtEmitenteCrea,
    required this.rtEmitenteHabilitacao,
    required this.rtEmitenteFormacao,
    required this.rtUa,
    required this.dataEmissao,
    required this.dataVencimento,
    required this.municipioEmissao,
    required this.apresentacaoNotaFiscal,
    required this.numeroNotaFiscal,
    required this.rotaDefinida,
    required this.tipoTransporte,
    required this.identificacaoVeiculo,
    required this.validadeDias,
    required this.produtos,
    required this.declaracoes,
  });

  int? id;
  int? codigo;
  String? codigoBarras;
  String? interessadoNome;
  String? interessadoCpfCnpj;
  String? destinatarioNome;
  String? destinatarioCpfCnpj;
  String? destinatarioEndereco;
  String? destinatarioMunicipio;
  String? destinatarioUf;
  String? propriedadeNome;
  String? propriedadeEndereco;
  String? propriedadeMunicipio;
  String? propriedadeUf;
  bool? transpPartidaLacrada;
  String? rtEmitenteNome;
  String? rtEmitenteCrea;
  String? rtEmitenteHabilitacao;
  String? rtEmitenteFormacao;
  String? rtUa;
  String? dataEmissao;
  String? dataVencimento;
  String? municipioEmissao;
  bool? apresentacaoNotaFiscal;
  String? numeroNotaFiscal;
  bool? rotaDefinida;
  String? tipoTransporte;
  String? identificacaoVeiculo;
  int? validadeDias;
  List<Produtos>? produtos;
  List<Declaracoes>? declaracoes;

  PtvModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    codigo = json['codigo'] ?? 0;
    codigoBarras = json['codigoBarras'] ?? "";
    interessadoNome = json['interessadoNome'] ?? "";
    interessadoCpfCnpj = json['interessadoCpfCnpj'] ?? "";
    destinatarioNome = json['destinatarioNome'] ?? "";
    destinatarioCpfCnpj = json['destinatarioCpfCnpj'] ?? "";
    destinatarioEndereco = json['destinatarioEndereco'] ?? "";
    destinatarioMunicipio = json['destinatarioMunicipio'] ?? "";
    destinatarioUf = json['destinatarioUf'] ?? "";
    propriedadeNome = json['propriedadeNome'] ?? "";
    propriedadeEndereco = json['propriedadeEndereco'] ?? "";
    propriedadeMunicipio = json['propriedadeMunicipio'] ?? "";
    propriedadeUf = json['propriedadeUf'] ?? "";
    transpPartidaLacrada = json['transpPartidaLacrada'] ?? false;
    rtEmitenteNome = json['rtEmitenteNome'] ?? "";
    rtEmitenteCrea = json['rtEmitenteCrea'] ?? "";
    rtEmitenteHabilitacao = json['rtEmitenteHabilitacao'] ?? "";
    rtEmitenteFormacao = json['rtEmitenteFormacao'] ?? "";
    rtUa = json['rtUa'] ?? "";
    dataEmissao = json['dataEmissao'] ?? "";
    dataVencimento = json['dataVencimento'] ?? "";
    municipioEmissao = json['municipioEmissao'] ?? "";
    apresentacaoNotaFiscal = json['apresentacaoNotaFiscal'] ?? false;
    numeroNotaFiscal = json['numeroNotaFiscal'] ?? "";
    rotaDefinida = json['rotaDefinida'] ?? false;
    tipoTransporte = json['tipoTransporte'] ?? "";
    identificacaoVeiculo = json['identificacaoVeiculo'] ?? "";
    validadeDias = json['validadeDias'] ?? 0;
    produtos = List.from(json['produtos']).map((e) => Produtos.fromJson(e)).toList();
    declaracoes = List.from(json['declaracoes']).map((e) => Declaracoes.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['codigo'] = codigo;
    _data['codigoBarras'] = codigoBarras;
    _data['interessadoNome'] = interessadoNome;
    _data['interessadoCpfCnpj'] = interessadoCpfCnpj;
    _data['destinatarioNome'] = destinatarioNome;
    _data['destinatarioCpfCnpj'] = destinatarioCpfCnpj;
    _data['destinatarioEndereco'] = destinatarioEndereco;
    _data['destinatarioMunicipio'] = destinatarioMunicipio;
    _data['destinatarioUf'] = destinatarioUf;
    _data['propriedadeNome'] = propriedadeNome;
    _data['propriedadeEndereco'] = propriedadeEndereco;
    _data['propriedadeMunicipio'] = propriedadeMunicipio;
    _data['propriedadeUf'] = propriedadeUf;
    _data['transpPartidaLacrada'] = transpPartidaLacrada;
    _data['rtEmitenteNome'] = rtEmitenteNome;
    _data['rtEmitenteCrea'] = rtEmitenteCrea;
    _data['rtEmitenteHabilitacao'] = rtEmitenteHabilitacao;
    _data['rtEmitenteFormacao'] = rtEmitenteFormacao;
    _data['rtUa'] = rtUa;
    _data['dataEmissao'] = dataEmissao;
    _data['dataVencimento'] = dataVencimento;
    _data['municipioEmissao'] = municipioEmissao;
    _data['apresentacaoNotaFiscal'] = apresentacaoNotaFiscal;
    _data['numeroNotaFiscal'] = numeroNotaFiscal;
    _data['rotaDefinida'] = rotaDefinida;
    _data['tipoTransporte'] = tipoTransporte;
    _data['identificacaoVeiculo'] = identificacaoVeiculo;
    _data['validadeDias'] = validadeDias;
    _data['produtos'] = produtos!.map((e) => e.toJson()).toList();
    _data['declaracoes'] = declaracoes!.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Produtos {
  Produtos({
    required this.id,
    required this.nomeProduto,
    required this.quantidade,
    required this.unidadeMedida,
    required this.validadeDocumento,
    required this.descricaoOrigem,
  });

  int? id;
  String? nomeProduto;
  String? quantidade;
  String? unidadeMedida;
  String? validadeDocumento;
  String? descricaoOrigem;

  Produtos.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    nomeProduto = json['nomeProduto'] ?? "";
    quantidade = json['quantidade'] ?? "";
    unidadeMedida = json['unidadeMedida'] ?? "";
    validadeDocumento = json['validadeDocumento'] ?? "";
    descricaoOrigem = json['descricaoOrigem'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nomeProduto'] = nomeProduto;
    _data['quantidade'] = quantidade;
    _data['unidadeMedida'] = unidadeMedida;
    _data['validadeDocumento'] = validadeDocumento;
    _data['descricaoOrigem'] = descricaoOrigem;
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
    id = json['id'] ?? 0;
    descricao = json['descricao'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['descricao'] = descricao;
    return _data;
  }
}
