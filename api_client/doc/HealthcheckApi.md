# openapi.api.HealthcheckApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.midorisour.kro.kr*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthcheckHealthcheckGet**](HealthcheckApi.md#healthcheckhealthcheckget) | **GET** /healthcheck | Healthcheck


# **healthcheckHealthcheckGet**
> JsonObject healthcheckHealthcheckGet()

Healthcheck

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getHealthcheckApi();

try {
    final response = api.healthcheckHealthcheckGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthcheckApi->healthcheckHealthcheckGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

