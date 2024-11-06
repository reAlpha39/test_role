import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@injectable
class ApiHelper {
  static Dio createDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: "http://sebiapi.porcalabs.com/api",
        contentType: Headers.jsonContentType,
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    );

    // add certificate callback
    dio.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
      final client = HttpClient();
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    });

    dio.httpClientAdapter;

    dio.interceptors.addAll({
      // AppInterceptor(dio),
      PrettyDioLogger(requestHeader: true, requestBody: true),
    });

    return dio;
  }
}
