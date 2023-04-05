class GtaModel {
  GtaModel({
    required this.numeroCadastro,
    required this.numero,
    required this.serie,
    required this.bovideo,
    required this.cpfCnpjOrigemFormatado,
    required this.cpfCnpjDestinoFormatado,
    required this.nomeOrigem,
    required this.nomeDestino,
    required this.estabelecimentoOrigem,
    required this.estabelecimentoDestino,
    required this.codigoEstabelecimentoOrigem,
    required this.codigoEstabelecimentoDestino,
    required this.municipioOrigem,
    required this.municipioDestino,
    required this.ufDestino,
    required this.ufOrigem,
    required this.finalidade,
    required this.interfaceStatus,
    required this.transportePe,
    required this.transporteRodoviario,
    required this.transporteFerroviario,
    required this.transporteAereo,
    required this.transporteMaritimo,
    required this.dataVacinaFebreAftosa1,
    required this.dataVacinaFebreAftosa2,
    required this.dataVacinacao1,
    required this.dataVacinacao2,
    required this.dataVacinacao3,
    required this.nomeVacinacao1,
    required this.nomeVacinacao2,
    required this.nomeVacinacao3,
    required this.atestadoExame1,
    required this.atestadoExame1OK,
    required this.atestadoExame2,
    required this.atestadoExame2OK,
    required this.atestadoExame3OK,
    required this.atestadoExame4OK,
    required this.atestadoExame5OK,
    required this.exameBrucelose,
    required this.exameTuberculose,
    required this.numeroLacre,
    required this.observacao,
    required this.numeroNotaFiscal,
    required this.tipoEmitente,
    required this.municipioEmissao,
    required this.dataValidadeGta,
    required this.dataEmissaoGta,
    required this.telefoneEmissao,
    required this.codigoDeBarras,
    required this.outraFinalidade,
    required this.nomeUaExpeditora,
    required this.telefoneUaExpeditora,
    required this.emailUaExpeditora,
    required this.municipioUaExpeditora,
    required this.nomeEmitente,
    required this.statusGta,
    required this.coordenadaGeograficaOrigem,
    required this.coordenadaGeograficaDestino,
    required this.codOrigem,
    required this.codDestino,
  });

  int? numeroCadastro;
  int? numero;
  String? serie;
  Bovideo? bovideo;
  String? cpfCnpjOrigemFormatado;
  String? cpfCnpjDestinoFormatado;
  String? nomeOrigem;
  String? nomeDestino;
  String? estabelecimentoOrigem;
  String? estabelecimentoDestino;
  String? codigoEstabelecimentoOrigem;
  String? codigoEstabelecimentoDestino;
  String? municipioOrigem;
  String? municipioDestino;
  String? ufDestino;
  String? ufOrigem;
  String? finalidade;
  String? interfaceStatus;
  bool? transportePe;
  bool? transporteRodoviario;
  bool? transporteFerroviario;
  bool? transporteAereo;
  bool? transporteMaritimo;
  int? dataVacinaFebreAftosa1;
  int? dataVacinaFebreAftosa2;
  int? dataVacinacao1;
  int? dataVacinacao2;
  int? dataVacinacao3;
  String? nomeVacinacao1;
  String? nomeVacinacao2;
  String? nomeVacinacao3;
  String? atestadoExame1;
  bool? atestadoExame1OK;
  String? atestadoExame2;
  bool? atestadoExame2OK;
  bool? atestadoExame3OK;
  bool? atestadoExame4OK;
  bool? atestadoExame5OK;
  bool? exameBrucelose;
  bool? exameTuberculose;
  String? numeroLacre;
  String? observacao;
  String? numeroNotaFiscal;
  String? tipoEmitente;
  String? municipioEmissao;
  int? dataValidadeGta;
  int? dataEmissaoGta;
  String? telefoneEmissao;
  String? codigoDeBarras;
  bool? outraFinalidade;
  String? nomeUaExpeditora;
  String? telefoneUaExpeditora;
  String? emailUaExpeditora;
  String? municipioUaExpeditora;
  String? nomeEmitente;
  String? statusGta;
  String? coordenadaGeograficaOrigem;
  String? coordenadaGeograficaDestino;
  String? codOrigem;
  String? codDestino;

  GtaModel.fromJson(Map<String, dynamic> json) {
    numeroCadastro = json['numeroCadastro'] ?? 0;
    numero = json['numero'] ?? 0;
    serie = json['serie'] ?? "";
    bovideo = Bovideo.fromJson(json['bovideo']);
    cpfCnpjOrigemFormatado = json['cpfCnpjOrigemFormatado'] ?? "";
    cpfCnpjDestinoFormatado = json['cpfCnpjDestinoFormatado'] ?? "";
    nomeOrigem = json['nomeOrigem'] ?? "";
    nomeDestino = json['nomeDestino'] ?? "";
    estabelecimentoOrigem = json['estabelecimentoOrigem'] ?? "";
    estabelecimentoDestino = json['estabelecimentoDestino'] ?? "";
    codigoEstabelecimentoOrigem = json['codigoEstabelecimentoOrigem'] ?? "";
    codigoEstabelecimentoDestino = json['codigoEstabelecimentoDestino'] ?? "";
    municipioOrigem = json['municipioOrigem'] ?? "";
    municipioDestino = json['municipioDestino'] ?? "";
    ufDestino = json['ufDestino'] ?? "";
    ufOrigem = json['ufOrigem'] ?? "";
    finalidade = json['finalidade'] ?? "";
    interfaceStatus = json['interfaceStatus'] ?? "";
    transportePe = json['transportePe'] ?? "";
    transporteRodoviario = json['transporteRodoviario'] ?? false;
    transporteFerroviario = json['transporteFerroviario'] ?? false;
    transporteAereo = json['transporteAereo'] ?? false;
    transporteMaritimo = json['transporteMaritimo'] ?? false;
    dataVacinaFebreAftosa1 = json['dataVacinaFebreAftosa1'] ?? 0;
    dataVacinaFebreAftosa2 = json['dataVacinaFebreAftosa2'] ?? 0;
    dataVacinacao1 = json['dataVacinacao1'] ?? 0;
    dataVacinacao2 = json['dataVacinacao2'] ?? 0;
    dataVacinacao3 = json['dataVacinacao3'] ?? 0;
    nomeVacinacao1 = json['nomeVacinacao1'] ?? "";
    nomeVacinacao2 = json['nomeVacinacao2'] ?? "";
    nomeVacinacao3 = json['nomeVacinacao3'] ?? "";
    atestadoExame1 = json['atestadoExame1'] ?? "";
    atestadoExame1OK = json['atestadoExame1OK'] ?? 0;
    atestadoExame2 = json['atestadoExame2'] ?? "";
    atestadoExame2OK = json['atestadoExame2OK'] ?? 0;
    atestadoExame3OK = json['atestadoExame3OK'] ?? 0;
    atestadoExame4OK = json['atestadoExame4OK'] ?? 0;
    atestadoExame5OK = json['atestadoExame5OK'] ?? 0;
    exameBrucelose = json['exameBrucelose'] ?? 0;
    exameTuberculose = json['exameTuberculose'] ?? 0;
    numeroLacre = json['numeroLacre'] ?? "";
    observacao = json['observacao'] ?? "";
    numeroNotaFiscal = json['numeroNotaFiscal'] ?? "";
    tipoEmitente = json['tipoEmitente'] ?? "";
    municipioEmissao = json['municipioEmissao'] ?? "";
    dataValidadeGta = json['dataValidadeGta'] ?? 0;
    dataEmissaoGta = json['dataEmissaoGta'] ?? 0;
    telefoneEmissao = json['telefoneEmissao'] ?? "";
    codigoDeBarras = json['codigoDeBarras'] ?? "";
    outraFinalidade = json['outraFinalidade'] ?? false;
    nomeUaExpeditora = json['nomeUaExpeditora'] ?? "";
    telefoneUaExpeditora = json['telefoneUaExpeditora'] ?? "";
    emailUaExpeditora = json['emailUaExpeditora'] ?? "";
    municipioUaExpeditora = json['municipioUaExpeditora'] ?? "";
    nomeEmitente = json['nomeEmitente'] ?? "";
    statusGta = json['statusGta'] ?? "";
    coordenadaGeograficaOrigem = json['coordenadaGeograficaOrigem'] ?? "";
    coordenadaGeograficaDestino = json['coordenadaGeograficaDestino'] ?? "";
    codOrigem = json['codOrigem'] ?? "";
    codDestino = json['codDestino'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['numeroCadastro'] = numeroCadastro;
    _data['numero'] = numero;
    _data['serie'] = serie;
    _data['bovideo'] = bovideo!.toJson();
    _data['cpfCnpjOrigemFormatado'] = cpfCnpjOrigemFormatado;
    _data['cpfCnpjDestinoFormatado'] = cpfCnpjDestinoFormatado;
    _data['nomeOrigem'] = nomeOrigem;
    _data['nomeDestino'] = nomeDestino;
    _data['estabelecimentoOrigem'] = estabelecimentoOrigem;
    _data['estabelecimentoDestino'] = estabelecimentoDestino;
    _data['codigoEstabelecimentoOrigem'] = codigoEstabelecimentoOrigem;
    _data['codigoEstabelecimentoDestino'] = codigoEstabelecimentoDestino;
    _data['municipioOrigem'] = municipioOrigem;
    _data['municipioDestino'] = municipioDestino;
    _data['ufDestino'] = ufDestino;
    _data['ufOrigem'] = ufOrigem;
    _data['finalidade'] = finalidade;
    _data['interfaceStatus'] = interfaceStatus;
    _data['transportePe'] = transportePe;
    _data['transporteRodoviario'] = transporteRodoviario;
    _data['transporteFerroviario'] = transporteFerroviario;
    _data['transporteAereo'] = transporteAereo;
    _data['transporteMaritimo'] = transporteMaritimo;
    _data['dataVacinaFebreAftosa1'] = dataVacinaFebreAftosa1;
    _data['dataVacinaFebreAftosa2'] = dataVacinaFebreAftosa2;
    _data['dataVacinacao1'] = dataVacinacao1;
    _data['dataVacinacao2'] = dataVacinacao2;
    _data['dataVacinacao3'] = dataVacinacao3;
    _data['nomeVacinacao1'] = nomeVacinacao1;
    _data['nomeVacinacao2'] = nomeVacinacao2;
    _data['nomeVacinacao3'] = nomeVacinacao3;
    _data['atestadoExame1'] = atestadoExame1;
    _data['atestadoExame1OK'] = atestadoExame1OK;
    _data['atestadoExame2'] = atestadoExame2;
    _data['atestadoExame2OK'] = atestadoExame2OK;
    _data['atestadoExame3OK'] = atestadoExame3OK;
    _data['atestadoExame4OK'] = atestadoExame4OK;
    _data['atestadoExame5OK'] = atestadoExame5OK;
    _data['exameBrucelose'] = exameBrucelose;
    _data['exameTuberculose'] = exameTuberculose;
    _data['numeroLacre'] = numeroLacre;
    _data['observacao'] = observacao;
    _data['numeroNotaFiscal'] = numeroNotaFiscal;
    _data['tipoEmitente'] = tipoEmitente;
    _data['municipioEmissao'] = municipioEmissao;
    _data['dataValidadeGta'] = dataValidadeGta;
    _data['dataEmissaoGta'] = dataEmissaoGta;
    _data['telefoneEmissao'] = telefoneEmissao;
    _data['codigoDeBarras'] = codigoDeBarras;
    _data['outraFinalidade'] = outraFinalidade;
    _data['nomeUaExpeditora'] = nomeUaExpeditora;
    _data['telefoneUaExpeditora'] = telefoneUaExpeditora;
    _data['emailUaExpeditora'] = emailUaExpeditora;
    _data['municipioUaExpeditora'] = municipioUaExpeditora;
    _data['nomeEmitente'] = nomeEmitente;
    _data['statusGta'] = statusGta;
    _data['coordenadaGeograficaOrigem'] = coordenadaGeograficaOrigem;
    _data['coordenadaGeograficaDestino'] = coordenadaGeograficaDestino;
    _data['codOrigem'] = codOrigem;
    _data['codDestino'] = codDestino;
    return _data;
  }
}

class Bovideo {
  Bovideo({
    required this.totalFaixa2Macho,
    required this.totalFaixa2Femea,
    required this.totalMacho,
    required this.totalFemea,
    required this.idSubgrupo,
    required this.nomeGrupo,
    required this.nomeSubgrupo,
    required this.totalporExtenso,
    required this.totalAnimais,
  });

  int? totalFaixa2Macho;
  int? totalFaixa2Femea;
  int? totalMacho;
  int? totalFemea;
  int? idSubgrupo;
  String? nomeGrupo;
  String? nomeSubgrupo;
  String? totalporExtenso;
  int? totalAnimais;

  Bovideo.fromJson(Map<String, dynamic> json) {
    totalFaixa2Macho = json['totalFaixa2Macho'] ?? 0;
    totalFaixa2Femea = json['totalFaixa2Femea'] ?? 0;
    totalMacho = json['totalMacho'] ?? 0;
    totalFemea = json['totalFemea'] ?? 0;
    idSubgrupo = json['idSubgrupo'] ?? 0;
    nomeGrupo = json['nomeGrupo'] ?? "";
    nomeSubgrupo = json['nomeSubgrupo'] ?? "";
    totalporExtenso = json['totalporExtenso'] ?? "";
    totalAnimais = json['totalAnimais'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['totalFaixa2Macho'] = totalFaixa2Macho;
    _data['totalFaixa2Femea'] = totalFaixa2Femea;
    _data['totalMacho'] = totalMacho;
    _data['totalFemea'] = totalFemea;
    _data['idSubgrupo'] = idSubgrupo;
    _data['nomeGrupo'] = nomeGrupo;
    _data['nomeSubgrupo'] = nomeSubgrupo;
    _data['totalporExtenso'] = totalporExtenso;
    _data['totalAnimais'] = totalAnimais;
    return _data;
  }
}
