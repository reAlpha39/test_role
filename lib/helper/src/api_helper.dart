import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@injectable
class ApiHelper {
  static Dio createDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: "https://sebiapi.porcalabs.com/api",
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
          'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
        },
        contentType: Headers.jsonContentType,
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    );

    // add certificate callback
    // dio.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
    //   final client = HttpClient();
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    //   return client;
    // });

    dio.httpClientAdapter;

    dio.interceptors.addAll({
      // AppInterceptor(dio),
      PrettyDioLogger(requestHeader: true, requestBody: true),
    });

    return dio;
  }
}
