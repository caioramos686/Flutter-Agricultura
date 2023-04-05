import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gedave/view/home/gedave/gedave_view.dart';
import 'package:gedave/view/home/gedave/servicos/cadastros/cadastro_pessoa_fisica_view.dart';
import 'package:gedave/view/home/gedave/servicos/cadastros/cadastro_pessoa_juridica_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/atestado_vacinacao_brucelose_tuberculose_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/cert_vacinacao_compulsoria_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/cfo_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/cfoc_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/consulta_certificado_comercio_aves_vivas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/consulta_certificado_comercio_produtos_insumos_vet_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/consulta_certificado_promotor_eventos_concentracao_animal_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/consulta_certificado_sanitario_animal_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/gta_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/laudo_vistoria_brucelose_tuberculose_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/ptv_view.dart';
import 'package:gedave/view/home/gedave/servicos/gta/cadastrar_gta/cadastrar_gta_view.dart';
import 'package:gedave/view/home/gedave/servicos/gta/emissao_gta/emissao_gta_view.dart';
import 'package:gedave/view/home/gedave/servicos/gta/gta_view.dart';
import 'package:gedave/view/home/gedave/servicos/scanner_view.dart';
import 'package:gedave/view/home/home_view.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) => runApp(
        Sizer(builder: (context, orientation, deviceType) {
          return MaterialApp(
            localizationsDelegates: [GlobalMaterialLocalizations.delegate],
            supportedLocales: [Locale('pt')],
            initialRoute: '/',
            routes: {
              '/gedave/servicos/ptv': (context) => const ConsultaPtvView(),
              '/gedave/servicos/cadastro/pessoafisica': (context) => const CadastroPessoaFisicaView(),
              '/gedave/servicos/cadastro/pessoajuridica': (context) => const CadastroPessoaJuridicaView(),
              '/gedave/servicos/consulta/ptv': (context) => const ConsultaPtvView(),
              '/gedave/servicos/consulta/cfo': (context) => const ConsultaCfoView(),
              '/gedave/servicos/consulta/cfoc': (context) => const ConsultaCfocView(),
              '/gedave/gta': (context) => const GtaView(),
              '/gedave/gta/cadastro': (context) => const CadastrarGtaView(),
              '/gedave/gta/emissao': (context) => const EmissaoGtaView(),
              '/gedave/servicos/consulta/gta': (context) => const ConsultaGtaView(),
              '/gedave/servicos/consulta/certVacinacaoCompulsoria': (context) => const ConsultaCertVacinacaoCompulsoriaView(),
              '/gedave/servicos/consulta/laudoVistoriaBruceloseTuberculose': (context) => const ConsultaLaudoVistoriaBruceloseTuberculoseView(),
              '/gedave/servicos/consulta/atestadoRealizacaoBruceloseTuberculose': (context) => const ConsultaAtestadoVacinacaoBruceloseTuberculoseView(),
              '/gedave/servicos/consulta/consultaCertificadoSanitarioAnimal': (context) => const ConsultaCertificadoSanitarioAnimalView(),
              '/gedave/servicos/consulta/consultaCertificadoComercioAvesVivas': (context) => const ConsultaCertificadoComercioAvesVivasView(),
              '/gedave/servicos/consulta/consultaCertificadoPromotorEventosConcentracaoAnimal': (context) =>
                  const ConsultaCertificadoPromotorEventosConcentracaoAnimalView(),
              '/gedave/servicos/consulta/consultaCertificadoComercioProdutosInsumosVet': (context) => const ConsultaCertificadoComercioProdutosInsumosVetView(),
              '/': (context) => const HomeView(),
              '/gedave': (context) => const GedaveView(),
              '/gedave/servicos': (context) => const ConsultasView(),
              '/scanner': (context) => const ScannerView()
            },
            theme: ThemeData(
              pageTransitionsTheme: const PageTransitionsTheme(),
              appBarTheme: AppBarTheme(
                systemOverlayStyle: (SystemUiOverlayStyle(statusBarColor: Colors.transparent)),
                titleTextStyle: TextStyle(fontSize: 20),
                toolbarHeight: 50.sp,
                color: Color.fromRGBO(28, 34, 59, 0.99),
                iconTheme: IconThemeData(color: Colors.white),
              ),
            ),
          );
        }),
      ));
}
