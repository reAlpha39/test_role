class AppException implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  AppException([this.message, this.prefix, this.url]);
}

class BadRequestException extends AppException {
  BadRequestException([String? message, String? url])
      : super(message, 'Bad Request', url);
}

class FetchDataException extends AppException {
  FetchDataException([String? message, String? url])
      : super(message, 'Unable to process', url);
}

class ApiNotRespondingException extends AppException {
  ApiNotRespondingException([String? message, String? url])
      : super(message, 'Api not responded in time', url);
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message, String? url])
      : super(message, 'Unauthorized request', url);
}

class SomethingDataException extends AppException {
  SomethingDataException([String? message, String? url])
      : super(message, 'its wrong to process', url);
}
