import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for BlogApi
void main() {
  final instance = Openapi().getBlogApi();

  group(BlogApi, () {
    // Get Common Response
    //
    //Future<AnimalHouseCommonResponse> getCommonResponseWorkingWithFrontendUnionCommonResponseGet() async
    test('test getCommonResponseWorkingWithFrontendUnionCommonResponseGet', () async {
      // TODO
    });

    // Get Unusual Response
    //
    //Future<AnimalHouseUnusualResponse> getUnusualResponseWorkingWithFrontendUnionUnusualResponseGet() async
    test('test getUnusualResponseWorkingWithFrontendUnionUnusualResponseGet', () async {
      // TODO
    });

  });
}
