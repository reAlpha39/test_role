import 'package:fpdart/fpdart.dart';
import 'package:test_role/helper/helper.dart';

abstract class BaseUseCase<T, Params> {
  Future<Either<AppException, T>> call(Params params);
}
