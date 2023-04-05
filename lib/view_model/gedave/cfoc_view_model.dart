import 'dart:convert';

import 'package:gedave/model/cfoc_model.dart';
import 'package:http/http.dart' as http;

Future fetchCfoc(String barCode, String url) async {
  final response = await http.get(Uri.parse(url + barCode));

  if (response.statusCode == 200) {
    Map<String, dynamic> responseBody = json.decode(utf8.decode(response.bodyBytes));
    return CfocModel.fromJson(responseBody);
  } else {
    return null;
  }
}
