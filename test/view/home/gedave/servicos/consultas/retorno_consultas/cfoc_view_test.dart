import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/cfoc_model.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/cfoc_view.dart';

void main() {
  testWidgets('Verifica se a View CfocView funciona', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
              builder: (_) => ConsultaCfocView(),
              settings: RouteSettings(
                arguments: ParametrosRetornoConsulta(CfocModel(
              rtEmitenteHabilitacao: '',
              flagPragaExportacao: true,
              dataEmissao: '',
              validadeDias: 0,
              propriedadeUf: '',
              codigoBarras: '',
              flagPragaQuarentenaria: true,
              id: 0,
              declaracoes: [Declaracoes(id: 0, descricao: '')],
              produtorCpfCnpj: '',
              produtos: [Produtos(id: 0, codigoLote: 0, nomeProduto: '', quantidade: '', unidadeDeMedida: '', dataConsolidacao: '', validadeDocumento: '')],
          flagPragaNaoQuarentenaria: true,
          rtEmitenteNome: '',
          codigo: 0,
          rtEmitenteFormacao: '',
          propriedadeMunicipio: '',
          propriedadeEndereco: '',
          flagPragaEspecifica: false,
          produtorNome: '',
          propriedadeNome: '',
          propriedadeCodigo: '',
          rtEmitenteCrea: '',
          dataVencimento: '',
          nomeMunicipioEmissao: '',
          transpPartidaLacrada: false,
          codigoUC: 0)),
              ));
        },
      ),
    ));

    expect(find.byType(ConsultaCfocView), findsOneWidget);
  });
}
