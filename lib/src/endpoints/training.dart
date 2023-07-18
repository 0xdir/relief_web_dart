import 'dart:convert';

import 'package:connection/connection.dart';

/// List humanitarian learning opportunities
Future<List<dynamic>> getTrainingV1({
  required Connection connection,
  int limit = 10,
  int offset = 0,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/training',
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

/// Get a specific learning opportunity by id
Future<List<dynamic>> getTrainingByIdV1({
  required Connection connection,
  required String trainingId,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/training/$trainingId',
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
