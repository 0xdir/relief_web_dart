import 'dart:convert';

import 'package:connection/connection.dart';

/// List humanitarian job offers
Future<List<dynamic>> getJobsV1({
  required Connection connection,
  int limit = 10,
  int offset = 0,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/jobs',
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

/// Get a specific job by id
Future<List<dynamic>> getJobByIdV1({
  required Connection connection,
  required String jobId,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/jobs/$jobId',
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
