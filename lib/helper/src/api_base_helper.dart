import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test_role/helper/helper.dart';

@injectable
class ApiBaseHelper {
  final dio = ApiHelper.createDio();

  Future<T?> get<T>({
    /// url
    required String url,

    /// query parameters
    Map<String, dynamic>? params,

    /// timeoutDuration in seconds
    int? timeout,
  }) async {
    try {
      final response = await dio
          .get<T>(url, queryParameters: params)
          .timeout(Duration(seconds: timeout ?? 60));

      return _returnResponse(response, url: url);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Timeout');
    } on DioException catch (e) {
      throw SomethingDataException(e.toString());
    }
  }

  Future<T?> getUri<T>({
    /// scheme
    String scheme = "https",

    /// path
    required String path,

    /// host
    required String host,

    /// query parameters
    Map<String, dynamic>? params,

    /// timeoutDuration in seconds
    int? timeout,
  }) async {
    try {
      final response = await dio
          .getUri<T>(
            Uri(
              scheme: scheme,
              host: host,
              path: path,
              queryParameters: params,
            ),
          )
          .timeout(Duration(seconds: timeout ?? 30));

      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Timeout');
    } on DioException catch (e) {
      throw SomethingDataException(e.toString());
    }
  }

  Future<T?> post<T>({
    /// url
    required String url,

    /// data
    dynamic data,

    /// timeoutDuration in seconds
    int? timeout,
  }) async {
    try {
      final response = await dio
          .post<T>(url, data: data)
          .timeout(Duration(seconds: timeout ?? 30));

      return _returnResponse(response, url: url);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Timeout');
    } on DioException catch (e) {
      throw SomethingDataException(e.toString());
    }
  }

  Future<T?> put<T>({
    /// url
    required String url,

    /// data
    dynamic data,

    /// timeoutDuration in seconds
    int? timeout,
  }) async {
    try {
      final response = await dio
          .put<T>(url, data: data)
          .timeout(Duration(seconds: timeout ?? 30));

      return _returnResponse(response, url: url);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Timeout');
    } on DioException catch (e) {
      throw SomethingDataException(e.toString());
    }
  }

  Future<T> patch<T>({
    /// url
    required String url,

    /// data
    dynamic data,

    /// timeoutDuration in seconds
    int? timeout,
  }) async {
    try {
      final response = await dio
          .patch<T>(url, data: data)
          .timeout(Duration(seconds: timeout ?? 30));

      return _returnResponse(response, url: url);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Timeout');
    } on DioException catch (e) {
      throw SomethingDataException(e.toString());
    }
  }

  Future<T?> delete<T>({
    /// url
    required String url,

    /// data
    dynamic data,

    /// query parameters
    Map<String, dynamic>? params,

    /// timeoutDuration in seconds
    int? timeout,
  }) async {
    try {
      final response = await dio
          .delete<T>(url, data: data, queryParameters: params)
          .timeout(Duration(seconds: timeout ?? 30));

      return _returnResponse(response, url: url);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Timeout');
    } on DioException catch (e) {
      throw SomethingDataException(e.toString());
    }
  }
}

T? _returnResponse<T>(
  Response response, {
  String? url,
}) {
  switch (response.statusCode) {
    case 200:
      return response.data;
    case 201:
      return response.data;
    case 401:
      throw UnauthorizedException(response.data["error"]);
    default:
      throw SomethingDataException('${response.data["message"]}');
  }
}
