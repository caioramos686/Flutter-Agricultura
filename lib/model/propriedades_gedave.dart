import 'package:gedave/view_model/gedave/atestado_vacinacao_brucelose_tuberculose_view_model.dart';
import 'package:gedave/view_model/gedave/cert_vacinacao_compulsoria_view_model.dart';
import 'package:gedave/view_model/gedave/cfo_view_model.dart';
import 'package:gedave/view_model/gedave/cfoc_view_model.dart';
import 'package:gedave/view_model/gedave/consulta_certificado_comercio_aves_vivas_view_model.dart';
import 'package:gedave/view_model/gedave/consulta_certificado_comercio_produtos_insumos_vet_view_model.dart';
import 'package:gedave/view_model/gedave/consulta_certificado_promotor_eventos_concentracao_animal_view_model.dart';
import 'package:gedave/view_model/gedave/consulta_certificado_sanitario_animal_view_model.dart';
import 'package:gedave/view_model/gedave/gta_view_model.dart';
import 'package:gedave/view_model/gedave/laudo_vistoria_brucelose_tuberculose_view_model.dart';
import 'package:gedave/view_model/gedave/ptv_view_model.dart';

class ModelsGedave {
  final Map _ptv = {
    "label": "PTV",
    "rota": "/gedave/servicos/consulta/ptv",
    "url": "http://34.176.203.169/ptv/",
    "icone": "PTV128.png",
    "descricao": "Permissão de Trânsito Vegetal",
    "tamanhoCodigo": 35,
    "model": fetchPtv,
  };

  final Map _cfo = {
    "label": "CFO",
    "rota": "/gedave/servicos/consulta/cfo",
    "url": "http://34.176.203.169/cfo/",
    "icone": "CFO128.png",
    "descricao": "Certificado Fitossanitário de Origem",
    "tamanhoCodigo": 35,
    "model": fetchCfo,
  };

  final Map _cfoc = {
    "label": "CFOC",
    "rota": "/gedave/servicos/consulta/cfoc",
    "url": "http://34.176.203.169/cfoc/",
    "icone": "CFOC128.png",
    "descricao": "Certificado Fitossanitário de Origem Consolidada",
    "tamanhoCodigo": 35,
    "model": fetchCfoc,
  };

  final Map _gta = {
    "label": "Guia de Trânsito Animal",
    "rota": "/gedave/servicos/consulta/gta",
    "url": "http://34.176.203.169/gta/",
    "icone": "GTA128.png",
    "descricao": "Guia de Trânsito Animal",
    "tamanhoCodigo": 44,
    "model": fetchGta,
  };

  final Map _vacCompulsoria = {
    "label": "Certificado de Vacinação Compulsória",
    "rota": "/gedave/servicos/consulta/certVacinacaoCompulsoria",
    "url": "http://34.176.203.169/certVacinacaoCompulsoria/",
    "icone": "Vacinas128.png",
    "descricao": "Certificado de Vacinação Compulsória",
    "tamanhoCodigo": 32,
    "model": fetchCertVacinacaoCompulsoria,
  };

  final Map _laudoBrucTub = {
    "label": "Laudo Vistoria Brucelose e Tuberculose",
    "rota": "/gedave/servicos/consulta/laudoVistoriaBruceloseTuberculose",
    "url": "http://34.176.203.169/laudoVistoriaBruceloseTuberculose/",
    "icone": "BruceloseTuberculose128.png",
    "descricao": "Laudo de Vistoria de Local de Realização de Testes de Brucelose e Tuberculose",
    "tamanhoCodigo": 32,
    "model": fetchLaudoVistoriaBruceloseTuberculose,
  };

  final Map _atestadoBrucTub = {
    "label": "Atestado Brucelose e Tuberculose",
    "rota": "/gedave/servicos/consulta/atestadoRealizacaoBruceloseTuberculose",
    "url": "http://34.176.203.169/atestadoRealizacaoBruceloseTuberculose/",
    "icone": "AtestadoBruceloseTuberculose128.png",
    "descricao": "Atestado de Realização de Testes de Brucelose e Tuberculose",
    "tamanhoCodigo": 32,
    "model": fetchAtestadoVacinacaoBruceloseTuberculose,
  };

  final Map _certSanitarioAnimal = {
    "label": "Certificado Sanitário Animal",
    "rota": "/gedave/servicos/consulta/consultaCertificadoSanitarioAnimal",
    "url": "http://34.176.203.169/consultaCertificadoSanitarioAnimal/",
    "icone": "CertificadoSanitario128.png",
    "descricao": "Certificado Sanitário Animal",
    "tamanhoCodigo": 32,
    "model": fetchConsultaCertificadoSanitarioAnimal,
  };

  final Map _certAvesVivas = {
    "label": "Certificado de Comércio Aves Vivas",
    "rota": "/gedave/servicos/consulta/consultaCertificadoComercioAvesVivas",
    "url": "http://34.176.203.169/consultaCertificadoComercioAvesVivas/",
    "icone": "AvesVivas128.png",
    "descricao": "Certificado Comércio de Aves Vivas",
    "tamanhoCodigo": 32,
    "model": fetchCertificadoComercioAvesVivas,
  };

  final Map _certEventosAnimais = {
    "label": "Promotor Eventos",
    "rota": "/gedave/servicos/consulta/consultaCertificadoPromotorEventosConcentracaoAnimal",
    "url": "http://34.176.203.169/consultaCertificadoPromotorEventosConcentracaoAnimal/",
    "icone": "EventosAnimais128.png",
    "descricao": "Certificado Promotor de Eventos de Concentração Animal",
    "tamanhoCodigo": 32,
    "model": fetchConsultaCertificadoPromotorEventosConcentracaoAnimal,
  };

  final Map _certInsumosVet = {
    "label": "Insumos Veterinarios",
    "rota": "/gedave/servicos/consulta/consultaCertificadoComercioProdutosInsumosVet",
    "url": "http://34.176.203.169/consultaCertificadoComercioProdutosInsumosVet/",
    "icone": "InsumosVet128.png",
    "descricao": "Certificado Comércio de Produtos e Insumos Veterinários",
    "tamanhoCodigo": 32,
    "model": fetchConsultaCertificadoComercioProdutosInsumosVet,
  };

  Map get ptv => _ptv;

  Map get cfo => _cfo;

  Map get cfoc => _cfoc;

  Map get gta => _gta;

  Map get vacCompulsoria => _vacCompulsoria;

  Map get laudoBrucTub => _laudoBrucTub;

  Map get atestadoBrucTub => _atestadoBrucTub;

  Map get certSanitarioAnimal => _certSanitarioAnimal;

  Map get certAvesVivas => _certAvesVivas;

  Map get certEventosAnimais => _certEventosAnimais;

  Map get certInsumosVet => _certInsumosVet;
}
