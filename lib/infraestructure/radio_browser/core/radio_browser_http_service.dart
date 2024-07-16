import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

//Not a generic http service, it is specific for the radio browser api
class RadioBrowserHtttpService {
  final address = 'all.api.radio-browser.info';
  final scheme = 'https';
  final headers = {
    'Content-Type': 'application/json',
    'User-Agent': 'RadioListJuan/0.0.1',
  };
  Future<Uint8List> get(String path,
      {String? uuids, String? name, String? country}) async {
    final addresses = await InternetAddress.lookup(address);
    for (InternetAddress address in addresses) {
      InternetAddress resultAddress = await address.reverse();
      String host = resultAddress.host;

      final uri = Uri(scheme: scheme, host: host, path: path, queryParameters: {
        'limit': '200',
        'offset': '0',
        'order': 'clicktrend',
        if (uuids != null) 'uuids': uuids,
        if (name != null) 'name': name,
        if (country != null) 'country': country,
      });

      http.Response response = await http.post(uri, headers: headers);

      final rawList = json.decode(response.body) as List<dynamic>;
      if (response.statusCode == 200 && (rawList.isNotEmpty)) {
        return response.bodyBytes;
      }
    }
    if (name == null) {
      throw Exception('Failed to load radios');
    }
    return Uint8List(0);
  }
}
