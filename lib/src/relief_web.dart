import 'package:connection/connection.dart';
import 'endpoints/reports.dart';
import 'endpoints/jobs.dart';
import 'endpoints/training.dart';
import 'endpoints/countries.dart';
import 'endpoints/disasters.dart';
import 'endpoints/sources.dart';

class ReliefWeb {
  late Connection _connection;

  /// Initialize the connection
  ReliefWeb() {
    _connection = Connection(
      authority: 'api.reliefweb.int',
      defaultHeaders: {'Content-Type': 'application/json'},
    );
  }

  /// Get Reports, Maps, Infographics
  Future<List<dynamic>> getReports({
    /// The maximum number of items to return
    ///
    /// The default is 10 and the maximum 1000.
    int limit = 10,

    /// The offset from which to return the items
    ///
    /// Allows paging through all results. The default is 0.
    int offset = 0,
  }) async {
    return await getReportsV1(
      connection: _connection,
      limit: limit,
      offset: offset,
    );
  }

  /// Get a specific report by reportId
  Future<List<dynamic>> getReportById({
    required String reportId,
  }) async {
    return await getReportByIdV1(
      connection: _connection,
      reportId: reportId,
    );
  }

  /// List humanitarian job offers
  Future<List<dynamic>> getJobs({
    /// The maximum number of items to return
    ///
    /// The default is 10 and the maximum 1000.
    int limit = 10,

    /// The offset from which to return the items
    ///
    /// Allows paging through all results. The default is 0.
    int offset = 0,
  }) async {
    return await getJobsV1(
      connection: _connection,
      limit: limit,
      offset: offset,
    );
  }

  /// Get a specific report by reportId
  Future<List<dynamic>> getJobById({
    required String jobId,
  }) async {
    return await getJobByIdV1(
      connection: _connection,
      jobId: jobId,
    );
  }

  /// List humanitarian learning opportunities
  Future<List<dynamic>> getTraining({
    /// The maximum number of items to return
    ///
    /// The default is 10 and the maximum 1000.
    int limit = 10,

    /// The offset from which to return the items
    ///
    /// Allows paging through all results. The default is 0.
    int offset = 0,
  }) async {
    return await getTrainingV1(
      connection: _connection,
      limit: limit,
      offset: offset,
    );
  }

  /// Get a specific learning opportunity
  Future<List<dynamic>> getTrainingById({
    required String trainingId,
  }) async {
    return await getTrainingByIdV1(
      connection: _connection,
      trainingId: trainingId,
    );
  }

  /// List countries covered by ReliefWeb.
  Future<List<dynamic>> getCountries({
    /// The maximum number of items to return
    ///
    /// The default is 10 and the maximum 1000.
    int limit = 10,

    /// The offset from which to return the items
    ///
    /// Allows paging through all results. The default is 0.
    int offset = 0,
  }) async {
    return await getCountriesV1(
      connection: _connection,
      limit: limit,
      offset: offset,
    );
  }

  /// Get a specific country by id
  Future<List<dynamic>> getCountryById({
    required String countryId,
  }) async {
    return await getCountryByIdV1(
      connection: _connection,
      countryId: countryId,
    );
  }

  /// List disasters covered by ReliefWeb
  Future<List<dynamic>> getDisasters({
    /// The maximum number of items to return
    ///
    /// The default is 10 and the maximum 1000.
    int limit = 10,

    /// The offset from which to return the items
    ///
    /// Allows paging through all results. The default is 0.
    int offset = 0,
  }) async {
    return await getDisastersV1(
      connection: _connection,
      limit: limit,
      offset: offset,
    );
  }

  /// Get a specific disaster by id
  Future<List<dynamic>> getDisasterById({
    required String disasterId,
  }) async {
    return await getDisasterByIdV1(
      connection: _connection,
      disasterId: disasterId,
    );
  }

  /// List organizations providing content to ReliefWeb
  Future<List<dynamic>> getSources({
    /// The maximum number of items to return
    ///
    /// The default is 10 and the maximum 1000.
    int limit = 10,

    /// The offset from which to return the items
    ///
    /// Allows paging through all results. The default is 0.
    int offset = 0,
  }) async {
    return await getSourcesV1(
      connection: _connection,
      limit: limit,
      offset: offset,
    );
  }

  /// Get a specific source by id
  Future<List<dynamic>> getSourceById({
    required String sourceId,
  }) async {
    return await getSourceByIdV1(
      connection: _connection,
      sourceId: sourceId,
    );
  }

  /// Close the connection
  void close() {
    _connection.close();
  }
}
