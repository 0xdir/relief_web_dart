import 'dart:convert';

import 'package:connection/connection.dart';

/// List organizations providing content to ReliefWeb
Future<List<dynamic>> getSourcesV1({
  required Connection connection,
  int limit = 10,
  int offset = 0,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/sources',
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

/// Get a specific source by id
Future<List<dynamic>> getSourceByIdV1({
  required Connection connection,
  required String sourceId,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/sources/$sourceId',
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
