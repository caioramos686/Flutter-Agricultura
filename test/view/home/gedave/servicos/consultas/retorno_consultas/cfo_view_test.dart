import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/cfo_model.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/cfo_view.dart';

void main() {
  testWidgets('Verifica se a View CfoView funciona', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
              builder: (_) => ConsultaCfoView(),
              settings: RouteSettings(
                arguments: ParametrosRetornoConsulta(CfoModel(
                    rtEmitenteHabilitacao: '',
                    nspPartidaLacrada: true,
                    flagPragaExportacao: true,
                    dataEmissao: '',
                    validadeDias: 0,
                    municipioEmissao: '',
                    propriedadeUf: '',
                    codigoBarras: '',
                    flagPragaQuarentenaria: true,
                    id: 0,
                    declaracoes: [Declaracoes(id: 0, descricao: '')],
                    produtorCpfCnpj: '',
                    produtos: [
                      Produtos(id: 0, codigoUp: 0, nomeProduto: '', quantidade: '', unidadeMedida: '', dataInicioColheita: '', dataFimColheita: '', validadeDocumento: '')
                    ],
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
                    dataVencimento: '')),
              ));
        },
      ),
    ));

    expect(find.byType(ConsultaCfoView), findsOneWidget);
  });
}
