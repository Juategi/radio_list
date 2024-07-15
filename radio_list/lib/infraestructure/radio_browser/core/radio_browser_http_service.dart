import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

//Not a generic http service, it is specific for the radio browser api
class RadioBrowserHtttpService {
  final address = 'all.api.radio-browser.info';
  final scheme = 'https';
  final headers = {
    'Content-Type': 'application/json',
    'User-Agent': 'RadioListJuan/0.0.1',
  };
  Future<String> get(String path) async {
    final addresses = await InternetAddress.lookup(address);
    for (InternetAddress address in addresses) {
      InternetAddress resultAddress = await address.reverse();
      String host = resultAddress.host;

      final uri = Uri(
        scheme: scheme,
        host: host,
        path: path,
      );

      http.Response response = await http.get(uri, headers: headers);

      final rawList = json.decode(response.body) as List<dynamic>;
      if (response.statusCode == 200 && rawList.isNotEmpty) {
        return response.body;
      }
    }
    throw Exception('Failed to load radios');
  }
}
