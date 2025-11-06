import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HealthcheckApi
void main() {
  final instance = Openapi().getHealthcheckApi();

  group(HealthcheckApi, () {
    // Healthcheck
    //
    //Future<JsonObject> healthcheckHealthcheckGet() async
    test('test healthcheckHealthcheckGet', () async {
      // TODO
    });

  });
}
