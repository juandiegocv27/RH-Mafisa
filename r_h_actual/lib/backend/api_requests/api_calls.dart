import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - emailNuevoEmpleado Group Code

class BFEmailNuevoEmpleadoGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailNuevoEmpleadoCall emailNuevoEmpleadoCall =
      EmailNuevoEmpleadoCall();
}

class EmailNuevoEmpleadoCall {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
  }) async {
    final baseUrl = BFEmailNuevoEmpleadoGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "sk-bf-c35ec344-3050-47cf-bdb3-608ca8415288": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailNuevoEmpleado',
      apiUrl:
          '$baseUrl/email?templateId=oGddcR0QLQcLxdlqy3Lf&to=$to&subject=$subject&attachmentLink=$attachmentLink&attachmentName=$attachmentName',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailNuevoEmpleado Group Code

/// Start BF - emailModificacionEmpleado Group Code

class BFEmailModificacionEmpleadoGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailModificacionEmpleadoCall emailModificacionEmpleadoCall =
      EmailModificacionEmpleadoCall();
}

class EmailModificacionEmpleadoCall {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
  }) async {
    final baseUrl = BFEmailModificacionEmpleadoGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "sk-bf-78cc3911-9de7-4a87-b1df-457e4ac6ddb6": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailModificacionEmpleado',
      apiUrl:
          '$baseUrl/email?templateId=cGQHU6xbfP4pjqfAf45i&to=$to&subject=$subject&attachmentLink=$attachmentLink&attachmentName=$attachmentName',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailModificacionEmpleado Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
