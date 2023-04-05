import 'dart:convert';
import 'package:gedave/model/cert_vacinacao_compulsoria_model.dart';
import 'package:http/http.dart' as http;

Future fetchCertVacinacaoCompulsoria(String barCode, String url) async {
  final response = await http.get(Uri.parse(url + barCode));

  if (response.statusCode == 200) {
    Map<String, dynamic> responseBody = json.decode(utf8.decode(response.bodyBytes));
    return CertVacinacaoCompulsoriaModel.fromJson(responseBody);
  } else {
    return null;
  }
}