import 'dart:convert';

import 'package:bitcoin_price_with_restapi/app/restapi/restapi.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class RestAPIService {
  RestAPIService({@required this.restApi});
  RestAPI restApi;

  Future<List<dynamic>> getCurrenciesData() async {
    final response = await http.get(
      
      restApi.currenciesUri.toString(),
    );

    if (response.statusCode == 200) {
      // print(response.body);
      final List<dynamic> currenciesData = json.decode(response.body);

      // print(currenciesData);
      return currenciesData;
    }

    print('Request: ${restApi.currenciesUri}, response: ${response.reasonPhrase}');
    throw response;
  }
}
