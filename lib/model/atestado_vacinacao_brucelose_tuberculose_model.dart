class AtestadoVacinacaoBruceloseTuberculoseModel {
  AtestadoVacinacaoBruceloseTuberculoseModel({
    required this.brucelose,
    required this.tuberculose,
  });

  Brucelose? brucelose;
  Tuberculose? tuberculose;

  AtestadoVacinacaoBruceloseTuberculoseModel.fromJson(Map<String, dynamic> json) {
    brucelose = json["brucelose"] != null ? Brucelose.fromJson(json["brucelose"]) : Brucelose.fromJson({});
    tuberculose = Tuberculose.fromJson(json["tuberculose"]);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["brucelose"] = brucelose!.toJson();
    _data["tuberculose"] = tuberculose!.toJson();
    return _data;
  }
}

class Brucelose {
  Brucelose({
    required this.dados,
    required this.executor,
    required this.propriedade,
    required this.resultadosBrucelose,
    required this.testeBrucelose,
  });

  Dados? dados;
  Executor? executor;
  Propriedade? propriedade;
  List<ResultadosBrucelose>? resultadosBrucelose;
  TesteBrucelose? testeBrucelose;

  Brucelose.fromJson(Map<String, dynamic> json) {
    dados = json["dados"] != null ? Dados.fromJson(json["dados"]) : Dados.fromJson({});
    executor = json["executor"] != null ? Executor.fromJson(json["executor"]) : Executor.fromJson({});
    propriedade = json["propriedade"] != null ? Propriedade.fromJson(json["propriedade"]) : Propriedade.fromJson({});
    resultadosBrucelose =
        json["resultadosBrucelose"] != null ? List.from(json["resultadosBrucelose"]).map((e) => ResultadosBrucelose.fromJson(e)).toList() : [];
    testeBrucelose = json["testeBrucelose"] != null ? TesteBrucelose.fromJson(json["testeBrucelose"]) : TesteBrucelose.fromJson({});
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["dados"] = dados!.toJson();
    _data["executor"] = executor!.toJson();
    _data["propriedade"] = propriedade!.toJson();
    _data["resultadosBrucelose"] = resultadosBrucelose!.map((e) => e.toJson()).toList();
    _data["testeBrucelose"] = testeBrucelose!.toJson();
    return _data;
  }
}

class Dados {
  Dados({
    required this.data,
    required this.numero,
    required this.situacao,
    required this.tipo,
  });

  String? data;
  String? numero;
  String? situacao;
  String? tipo;

  Dados.fromJson(Map<String, dynamic> json) {
    data = json["data"] ?? "";
    numero = json["numero"] ?? "";
    situacao = json["situacao"] ?? "";
    tipo = json["tipo"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["data"] = data;
    _data["numero"] = numero;
    _data["situacao"] = situacao;
    _data["tipo"] = tipo;
    return _data;
  }
}

class Executor {
  Executor({
    required this.cpf,
    required this.cpfCnpj,
    required this.crmvuf,
    required this.habilitacaoMapa,
    required this.nome,
    required this.proprietariaInsumos,
    required this.razao,
  });

  String? cpf;
  String? cpfCnpj;
  String? crmvuf;
  String? habilitacaoMapa;
  String? nome;
  String? proprietariaInsumos;
  String? razao;

  Executor.fromJson(Map<String, dynamic> json) {
    cpf = json["cpf"] ?? "";
    cpfCnpj = json["cpfCnpj"] ?? "";
    crmvuf = json["crmvuf"] ?? "";
    habilitacaoMapa = json["habilitacaoMapa"] ?? "";
    nome = json["nome"] ?? "";
    proprietariaInsumos = json["proprietariaInsumos"] ?? "";
    razao = json["razao"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["cpf"] = cpf;
    _data["cpfCnpj"] = cpfCnpj;
    _data["crmvuf"] = crmvuf;
    _data["habilitacaoMapa"] = habilitacaoMapa;
    _data["nome"] = nome;
    _data["proprietariaInsumos"] = proprietariaInsumos;
    _data["razao"] = razao;
    return _data;
  }
}

class Propriedade {
  Propriedade({
    required this.animaisExistentes,
    required this.atividadeProdutiva,
    required this.codigo,
    required this.codigoAp,
    required this.cpfCnpjProdutorAp,
    required this.municipio,
    required this.nomeProdutor,
    required this.nomePropriedade,
    required this.rebanho,
    required this.uf,
  });

  int? animaisExistentes;
  String? atividadeProdutiva;
  String? codigo;
  String? codigoAp;
  String? cpfCnpjProdutorAp;
  String? municipio;
  String? nomeProdutor;
  String? nomePropriedade;
  String? rebanho;
  String? uf;

  Propriedade.fromJson(Map<String, dynamic> json) {
    animaisExistentes = json["animaisExistentes"] ?? 0;
    atividadeProdutiva = json["atividadeProdutiva"] ?? "";
    codigo = json["codigo"] ?? "";
    codigoAp = json["codigoAp"] ?? "";
    cpfCnpjProdutorAp = json["cpfCnpjProdutorAp"] ?? "";
    municipio = json["municipio"] ?? "";
    nomeProdutor = json["nomeProdutor"] ?? "";
    nomePropriedade = json["nomePropriedade"] ?? "";
    rebanho = json["rebanho"] ?? "";
    uf = json["uf"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["animaisExistentes"] = animaisExistentes;
    _data["atividadeProdutiva"] = atividadeProdutiva;
    _data["codigo"] = codigo;
    _data["codigoAp"] = codigoAp;
    _data["cpfCnpjProdutorAp"] = cpfCnpjProdutorAp;
    _data["municipio"] = municipio;
    _data["nomeProdutor"] = nomeProdutor;
    _data["nomePropriedade"] = nomePropriedade;
    _data["rebanho"] = rebanho;
    _data["uf"] = uf;
    return _data;
  }
}

class ResultadosBrucelose {
  ResultadosBrucelose({
    required this.caracteristicaReacao,
    required this.destinoReagentes,
    required this.faixaEtariaMeses,
    required this.labPrimeiroTesteConfirmatorio,
    required this.numeroIdentificacao,
    required this.ppda0,
    required this.ppda72,
    required this.ppdaComputada,
    required this.ppdb0,
    required this.ppdbComputada,
    required this.qtde2ME,
    required this.raca,
    required this.resultado,
    required this.reteste,
    required this.sexo,
    required this.tipoIdentificacao,
    required this.valorPPDAPPDB,
  });

  String? caracteristicaReacao;
  String? destinoReagentes;
  String? faixaEtariaMeses;
  String? labPrimeiroTesteConfirmatorio;
  String? numeroIdentificacao;
  int? ppda0;
  int? ppda72;
  int? ppdaComputada;
  int? ppdb0;
  int? ppdbComputada;
  int? qtde2ME;
  String? raca;
  String? resultado;
  String? reteste;
  String? sexo;
  String? tipoIdentificacao;
  int? valorPPDAPPDB;

  ResultadosBrucelose.fromJson(Map<String, dynamic> json) {
    caracteristicaReacao = json["caracteristicaReacao"] ?? "";
    destinoReagentes = json["destinoReagentes"] ?? "";
    faixaEtariaMeses = json["faixaEtariaMeses"] ?? "";
    labPrimeiroTesteConfirmatorio = json["labPrimeiroTesteConfirmatorio"] ?? "";
    numeroIdentificacao = json["numeroIdentificacao"] ?? "";
    ppda0 = json["ppda0"] ?? 0;
    ppda72 = json["ppda72"] ?? 0;
    ppdaComputada = json["ppdaComputada"] ?? 0;
    ppdb0 = json["ppdb0"] ?? 0;
    ppdbComputada = json["ppdbComputada"] ?? 0;
    qtde2ME = json["qtde2ME"] ?? 0;
    raca = json["raca"] ?? "";
    resultado = json["resultado"] ?? "";
    reteste = json["reteste"] ?? "";
    sexo = json["sexo"] ?? "";
    tipoIdentificacao = json["tipoIdentificacao"] ?? "";
    valorPPDAPPDB = json["valorPPDAPPDB"] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["caracteristicaReacao"] = caracteristicaReacao;
    _data["destinoReagentes"] = destinoReagentes;
    _data["faixaEtariaMeses"] = faixaEtariaMeses;
    _data["labPrimeiroTesteConfirmatorio"] = labPrimeiroTesteConfirmatorio;
    _data["numeroIdentificacao"] = numeroIdentificacao;
    _data["ppda0"] = ppda0;
    _data["ppda72"] = ppda72;
    _data["ppdaComputada"] = ppdaComputada;
    _data["ppdb0"] = ppdb0;
    _data["ppdbComputada"] = ppdbComputada;
    _data["qtde2ME"] = qtde2ME;
    _data["raca"] = raca;
    _data["resultado"] = resultado;
    _data["reteste"] = reteste;
    _data["sexo"] = sexo;
    _data["tipoIdentificacao"] = tipoIdentificacao;
    _data["valorPPDAPPDB"] = valorPPDAPPDB;
    return _data;
  }
}

class TesteBrucelose {
  TesteBrucelose({
    required this.dataInoculacao,
    required this.dataLeitura,
    required this.horaInoculacao,
    required this.horaLeitura,
    required this.motivo,
    required this.tipo,
  });

  String? dataInoculacao;
  String? dataLeitura;
  String? horaInoculacao;
  String? horaLeitura;
  String? motivo;
  String? tipo;

  TesteBrucelose.fromJson(Map<String, dynamic> json) {
    dataInoculacao = json["dataInoculacao"] ?? "";
    dataLeitura = json["dataLeitura"] ?? "";
    horaInoculacao = json["horaInoculacao"] ?? "";
    horaLeitura = json["horaLeitura"] ?? "";
    motivo = json["motivo"] ?? "";
    tipo = json["tipo"] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["dataInoculacao"] = dataInoculacao;
    _data["dataLeitura"] = dataLeitura;
    _data["horaInoculacao"] = horaInoculacao;
    _data["horaLeitura"] = horaLeitura;
    _data["motivo"] = motivo;
    _data["tipo"] = tipo;
    return _data;
  }
}

class Tuberculose {
  Tuberculose({
    required this.dados,
    required this.executor,
    required this.propriedade,
    required this.resultadosBrucelose,
    required this.testeBrucelose,
  });

  Dados? dados;
  Executor? executor;
  Propriedade? propriedade;
  List<ResultadosBrucelose>? resultadosBrucelose;
  TesteBrucelose? testeBrucelose;

  Tuberculose.fromJson(Map<String, dynamic> json) {
    dados = json["dados"] != null ? Dados.fromJson(json["dados"]) : Dados.fromJson({});
    executor = json["executor"] != null ? Executor.fromJson(json["executor"]) : Executor.fromJson({});
    propriedade = json["propriedade"] != null ? Propriedade.fromJson(json["propriedade"]) : Propriedade.fromJson({});
    resultadosBrucelose =
        json["resultadosBrucelose"] != null ? List.from(json["resultadosBrucelose"]).map((e) => ResultadosBrucelose.fromJson(e)).toList() : [];
    testeBrucelose = json["testeBrucelose"] != null ? TesteBrucelose.fromJson(json["testeBrucelose"]) : TesteBrucelose.fromJson({});
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};

    _data["dados"] = dados!.toJson();
    _data["executor"] = executor!.toJson();
    _data["propriedade"] = propriedade!.toJson();
    _data["resultadosBrucelose"] = resultadosBrucelose!.map((e) => e.toJson()).toList();
    _data["testeBrucelose"] = testeBrucelose!.toJson();
    return _data;
  }
}
