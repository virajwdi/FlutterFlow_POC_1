import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetProductListCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductList',
      apiUrl: 'https://dummyjson.com/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? productListingsFromAPI(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
  static List<String>? productTitle(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetProductCategoryListCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductCategoryList',
      apiUrl: 'https://dummyjson.com/products/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic categoryList(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class FetchByCategoryNameCall {
  static Future<ApiCallResponse> call({
    String? categorySlug = 'beauty',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'fetchByCategoryName',
      apiUrl: 'https://dummyjson.com/products/category/$categorySlug',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? categorywiseProduct(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class GetProductDetailsCall {
  static Future<ApiCallResponse> call({
    String? productId = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductDetails',
      apiUrl: 'https://dummyjson.com/products/$productId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchProductCall {
  static Future<ApiCallResponse> call({
    String? searchItem = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchProduct',
      apiUrl: 'https://dummyjson.com/products/search?q=$searchItem',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? seeachedProd(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class ExpensesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'expenses',
      apiUrl: 'https://flutterflow.netlify.app/expenses.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? expenses(dynamic response) => getJsonField(
        response,
        r'''$.expenses''',
        true,
      ) as List?;
}

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
