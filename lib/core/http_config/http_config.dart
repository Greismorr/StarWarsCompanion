class HttpConfig {
  final String baseUrl = 'swapi.dev';
  final int connectionTimeout;
  late Map<String, String> headers;

  HttpConfig({this.connectionTimeout = 60}) {
    _setHeaders();
  }

  _setHeaders() {
    headers = {
      'Content-Type': 'application/json',
      'charset': 'UTF-8',
    };
  }
}
