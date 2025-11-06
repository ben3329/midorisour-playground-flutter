# openapi.api.BlogApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.midorisour.kro.kr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCommonResponseWorkingWithFrontendUnionCommonResponseGet**](BlogApi.md#getcommonresponseworkingwithfrontendunioncommonresponseget) | **GET** /working-with-frontend/union/common-response | Get Common Response
[**getUnusualResponseWorkingWithFrontendUnionUnusualResponseGet**](BlogApi.md#getunusualresponseworkingwithfrontendunionunusualresponseget) | **GET** /working-with-frontend/union/unusual-response | Get Unusual Response


# **getCommonResponseWorkingWithFrontendUnionCommonResponseGet**
> AnimalHouseCommonResponse getCommonResponseWorkingWithFrontendUnionCommonResponseGet()

Get Common Response

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getBlogApi();

try {
    final response = api.getCommonResponseWorkingWithFrontendUnionCommonResponseGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlogApi->getCommonResponseWorkingWithFrontendUnionCommonResponseGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AnimalHouseCommonResponse**](AnimalHouseCommonResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnusualResponseWorkingWithFrontendUnionUnusualResponseGet**
> AnimalHouseUnusualResponse getUnusualResponseWorkingWithFrontendUnionUnusualResponseGet()

Get Unusual Response

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getBlogApi();

try {
    final response = api.getUnusualResponseWorkingWithFrontendUnionUnusualResponseGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlogApi->getUnusualResponseWorkingWithFrontendUnionUnusualResponseGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AnimalHouseUnusualResponse**](AnimalHouseUnusualResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

