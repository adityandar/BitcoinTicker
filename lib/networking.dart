import 'package:http/http.dart' as http;

class Network {
  final String url;

  Network(this.url);

  Future<http.Response> getData() {
    return http.get(url);
  }
}
