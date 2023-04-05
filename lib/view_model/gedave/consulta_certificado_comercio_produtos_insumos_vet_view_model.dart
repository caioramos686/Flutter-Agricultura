import 'dart:convert';
import 'package:gedave/model/consulta_certificado_comercio_produtos_insumos_vet_model.dart';
import 'package:http/http.dart' as http;

Future fetchConsultaCertificadoComercioProdutosInsumosVet(String barCode, String url) async {
  final response = await http.get(Uri.parse(url + barCode));

  if (response.statusCode == 200) {
    Map<String, dynamic> responseBody = json.decode(utf8.decode(response.bodyBytes));
    return ConsultaCertificadoComercioProdutosInsumosVetModel.fromJson(responseBody);
  } else {
    return null;
  }
}
