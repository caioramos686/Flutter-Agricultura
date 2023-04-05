class LaudoVistoriaBruceloseTuberculoseModel {
  LaudoVistoriaBruceloseTuberculoseModel({
    required this.tipoLocal,
    required this.nomeRazaoSocial,
    required this.cpfCnpj,
    required this.endereco,
    required this.numero,
    required this.complemento,
    required this.bairro,
    required this.cep,
    required this.municipio,
    required this.uf,
    required this.listaVeterinario,
    required this.favBruceloseTal,
    required this.favBruceloseAat,
    required this.favTuberculose,
    required this.listaLaudoVistoria,
  });

  String? tipoLocal;
  String? nomeRazaoSocial;
  String? cpfCnpj;
  String? endereco;
  String? numero;
  String? complemento;
  String? bairro;
  String? cep;
  String? municipio;
  String? uf;
  List<ListaVeterinario>? listaVeterinario;
  String? favBruceloseTal;
  String? favBruceloseAat;
  String? favTuberculose;
  List<ListaLaudoVistoria>? listaLaudoVistoria;

  LaudoVistoriaBruceloseTuberculoseModel.fromJson(Map<String, dynamic> json) {
    tipoLocal = json['tipoLocal'] ?? "";
    nomeRazaoSocial = json['nomeRazaoSocial'] ?? "";
    cpfCnpj = json['cpfCnpj'] ?? "";
    endereco = json['endereco'] ?? "";
    numero = json['numero'] ?? "";
    complemento = json['complemento'] ?? "";
    bairro = json['bairro'] ?? "";
    cep = json['cep'] ?? "";
    municipio = json['municipio'] ?? "";
    uf = json['uf'] ?? "";
    listaVeterinario = List.from(json['listaVeterinario']).map((e) => ListaVeterinario.fromJson(e)).toList();
    favBruceloseTal = json['favBruceloseTal'] ?? "";
    favBruceloseAat = json['favBruceloseAat'] ?? "";
    favTuberculose = json['favTuberculose'] ?? "";
    listaLaudoVistoria = List.from(json['listaLaudoVistoria']).map((e) => ListaLaudoVistoria.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['tipoLocal'] = tipoLocal;
    _data['nomeRazaoSocial'] = nomeRazaoSocial;
    _data['cpfCnpj'] = cpfCnpj;
    _data['endereco'] = endereco;
    _data['numero'] = numero;
    _data['complemento'] = complemento;
    _data['bairro'] = bairro;
    _data['cep'] = cep;
    _data['municipio'] = municipio;
    _data['uf'] = uf;
    _data['listaVeterinario'] = listaVeterinario!.map((e) => e.toJson()).toList();
    _data['favBruceloseTal'] = favBruceloseTal;
    _data['favBruceloseAat'] = favBruceloseAat;
    _data['favTuberculose'] = favTuberculose;
    _data['listaLaudoVistoria'] = listaLaudoVistoria!.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ListaVeterinario {
  ListaVeterinario({
    required this.cpf,
    required this.nome,
    required this.crmv,
    required this.numeroHabilitacaoMapa,
    required this.situacaoHabilitacao,
    required this.veterinarioPrincipal,
  });

  String? cpf;
  String? nome;
  String? crmv;
  String? numeroHabilitacaoMapa;
  String? situacaoHabilitacao;
  String? veterinarioPrincipal;

  ListaVeterinario.fromJson(Map<String, dynamic> json) {
    cpf = json['cpf'] ?? "";
    nome = json['nome'] ?? "";
    crmv = json['crmv'] ?? "";
    numeroHabilitacaoMapa = json['numeroHabilitacaoMapa'] ?? "";
    situacaoHabilitacao = json['situacaoHabilitacao'] ?? "";
    veterinarioPrincipal = json['veterinarioPrincipal'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['cpf'] = cpf;
    _data['nome'] = nome;
    _data['crmv'] = crmv;
    _data['numeroHabilitacaoMapa'] = numeroHabilitacaoMapa;
    _data['situacaoHabilitacao'] = situacaoHabilitacao;
    _data['veterinarioPrincipal'] = veterinarioPrincipal;
    return _data;
  }
}

class ListaLaudoVistoria {
  ListaLaudoVistoria({
    required this.ordem,
    required this.nomeColunaBanco,
    required this.descricaoItem,
    required this.conforme,
  });

  int? ordem;
  String? nomeColunaBanco;
  String? descricaoItem;
  String? conforme;

  ListaLaudoVistoria.fromJson(Map<String, dynamic> json) {
    ordem = json['ordem'] ?? 0;
    nomeColunaBanco = json['nomeColunaBanco'] ?? "";
    descricaoItem = json['descricaoItem'] ?? "";
    conforme = json['conforme'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ordem'] = ordem;
    _data['nomeColunaBanco'] = nomeColunaBanco;
    _data['descricaoItem'] = descricaoItem;
    _data['conforme'] = conforme;
    return _data;
  }
}
