import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:test_role/domain/domain.dart';
import 'package:test_role/helper/helper.dart';

@Injectable(as: TestRoleRepo)
class TestRoleRepoImpl implements TestRoleRepo {
  final ApiBaseHelper _helper;

  TestRoleRepoImpl(this._helper);

  @override
  Future<Either<AppException, bool?>> insertTestRole(
    TestRoleEntity entity,
  ) async {
    try {
      await _helper.post(
        url: '/',
        data: entity.toJson(),
      );

      return right(true);
    } catch (e) {
      return left(AppException(e.toString()));
    }
  }
}
