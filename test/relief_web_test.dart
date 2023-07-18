import 'package:relief_web/relief_web.dart';
import 'package:test/test.dart';

void main() {
  late ReliefWeb reliefWeb;

  setUp(() {
    reliefWeb = ReliefWeb();
  });

  tearDown(() {
    reliefWeb.close();
  });

  test('Should get countries', () async {
    return reliefWeb.getCountries().then((value) => expect(
          value[0]['href'].contains('countries'),
          true,
        ));
  });

  test('Should get country by id', () async {
    return reliefWeb.getCountryById(countryId: '14894').then((value) => expect(
          value[0]['id'].contains('14894'),
          true,
        ));
  });

  test('Should get disasters', () async {
    return reliefWeb.getDisasters().then((value) => expect(
          value[0]['href'].contains('disasters'),
          true,
        ));
  });

  test('Should get disaster by id', () async {
    return reliefWeb
        .getDisasterById(disasterId: '48038')
        .then((value) => expect(
              value[0]['id'].contains('48038'),
              true,
            ));
  });

  test('Should get jobs', () async {
    return reliefWeb.getJobs().then((value) => expect(
          value[0]['href'].contains('jobs'),
          true,
        ));
  });

  test('Should get job by id', () async {
    return reliefWeb.getJobById(jobId: '3774377').then((value) => expect(
          value[0]['id'].contains('3774377'),
          true,
        ));
  });

  test('Should get reports', () async {
    return reliefWeb.getReports().then((value) => expect(
          value[0]['href'].contains('reports'),
          true,
        ));
  });

  test('Should get report by id', () async {
    return reliefWeb.getReportById(reportId: '3857938').then((value) => expect(
          value[0]['id'].contains('3857938'),
          true,
        ));
  });

  test('Should get sources', () async {
    return reliefWeb.getSources().then((value) => expect(
          value[0]['href'].contains('sources'),
          true,
        ));
  });

  test('Should get source by id', () async {
    return reliefWeb.getSourceById(sourceId: '47093').then((value) => expect(
          value[0]['id'].contains('47093'),
          true,
        ));
  });

  test('Should get training', () async {
    return reliefWeb.getTraining().then((value) => expect(
          value[0]['href'].contains('training'),
          true,
        ));
  });

  test('Should get training by id', () async {
    return reliefWeb
        .getTrainingById(trainingId: '3886446')
        .then((value) => expect(
              value[0]['id'].contains('3886446'),
              true,
            ));
  });
}
