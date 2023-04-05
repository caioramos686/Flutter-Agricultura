import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gedave/model/ptv_model.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/consultas_view.dart';
import 'package:gedave/view/home/gedave/servicos/consultas/retorno_consultas/ptv_view.dart';

void main() {
  testWidgets('Verifica se a View PtvView funciona', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Navigator(
        onGenerateRoute: (_) {
          return MaterialPageRoute<Widget>(
              builder: (_) => ConsultaPtvView(),
              settings: RouteSettings(
                arguments: ParametrosRetornoConsulta(PtvModel(
                    id: 0,
                    codigo: 0,
                    codigoBarras: '',
                    interessadoNome: '',
                    interessadoCpfCnpj: '',
                    destinatarioNome: '',
                    destinatarioCpfCnpj: '',
                    destinatarioEndereco: '',
                    destinatarioMunicipio: '',
                    destinatarioUf: '',
                    propriedadeNome: '',
                    propriedadeEndereco: '',
                    propriedadeMunicipio: '',
                    propriedadeUf: '',
                    transpPartidaLacrada: false,
                    rtEmitenteNome: '',
                    rtEmitenteCrea: '',
                    rtEmitenteHabilitacao: '',
                    rtEmitenteFormacao: '',
                    rtUa: '',
                    dataEmissao: '',
                    dataVencimento: '',
                    municipioEmissao: '',
                    apresentacaoNotaFiscal: false,
                    numeroNotaFiscal: '',
                    rotaDefinida: false,
                    tipoTransporte: '',
                    identificacaoVeiculo: '',
                    validadeDias: 0,
                    produtos: [Produtos(id: 0, nomeProduto: '', quantidade: '', unidadeMedida: '', validadeDocumento: '', descricaoOrigem: '')],
                    declaracoes: [Declaracoes(id: 0, descricao: '')])),
              ));
        },
      ),
    ));

    expect(find.byType(ConsultaPtvView), findsOneWidget);
  });
}
