import 'dart:convert';

import 'package:connection/connection.dart';

/// List disasters covered by ReliefWeb
Future<List<dynamic>> getDisastersV1({
  required Connection connection,
  int limit = 10,
  int offset = 0,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/disasters',
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

/// Get a specific disaster by id
Future<List<dynamic>> getDisasterByIdV1({
  required Connection connection,
  required String disasterId,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/disasters/$disasterId',
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
