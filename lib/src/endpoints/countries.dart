import 'dart:convert';

import 'package:connection/connection.dart';

/// List countries covered by ReliefWeb
Future<List<dynamic>> getCountriesV1({
  required Connection connection,
  int limit = 10,
  int offset = 0,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/countries',
    params: {
      'limit': limit.toString(),
      'offset': offset.toString(),
    },
  );

  switch (response.statusCode) {
    case 200:
      return json.decode(response.body)['data'];
    case 404:
      return [];
    default:
      throw ('Server error: ${response.statusCode}');
  }
}

/// Get a specific country by id
Future<List<dynamic>> getCountryByIdV1({
  required Connection connection,
  required String countryId,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/countries/$countryId',
  );
  switch (response.statusCode) {
    case 200:
      return json.decode(response.body)['data'];
    case 404:
      return [];
    default:
      throw ('Server error: ${response.statusCode}');
  }
}
