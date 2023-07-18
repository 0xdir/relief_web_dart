import 'dart:convert';

import 'package:connection/connection.dart';

/// Get Reports, Maps, Infographics
Future<List<dynamic>> getReportsV1({
  required Connection connection,
  int limit = 10,
  int offset = 0,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/reports',
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

/// Get a specific report by reportId
Future<List<dynamic>> getReportByIdV1({
  required Connection connection,
  required String reportId,
}) async {
  Response response = await connection.get(
    endpoint: '/v1/reports/$reportId',
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
