import 'package:relief_web/relief_web.dart';

void main() async {
  /// Initialize the main object
  ReliefWeb reliefWeb = ReliefWeb();

  /// Get reports
  await reliefWeb.getJobById(jobId: '3774377').then((value) => print(value));

  /// Close the connection
  reliefWeb.close();
}
