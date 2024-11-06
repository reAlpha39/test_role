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
          'Content-Type': 'application/json',
        },
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    );

    dio.httpClientAdapter;

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Allow Dio to handle OPTIONS requests automatically
        return handler.next(options);
      },
    ));

    dio.interceptors.addAll({
      // AppInterceptor(dio),
      PrettyDioLogger(requestHeader: true, requestBody: true),
    });

    return dio;
  }
}
