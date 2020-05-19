class RestAPI {
  static final String host = 'api.coindesk.com';
  static final String currenciesPath = 'v1/bpi/supported-currencies.json';

  Uri currenciesUri = Uri(
    scheme: 'https',
    host: host,
    path: currenciesPath,
  );
}
