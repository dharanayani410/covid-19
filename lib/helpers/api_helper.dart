import 'dart:convert';

import 'package:covid/modals/custom.dart';
import 'package:http/http.dart' as http;

class APIHelper {
  APIHelper._();
  static final APIHelper apiHelper = APIHelper._();

  Future<Covid?> fetchDetail() async {
    String api = "https://api.rootnet.in/covid19-in/stats/latest";

    http.Response res = await http.get(Uri.parse(api));

    if (res.statusCode == 200) {
      Map data = jsonDecode(res.body);

      Covid allData = Covid.fromJson(json: data);

      return allData;
    }
    return null;
  }
}
