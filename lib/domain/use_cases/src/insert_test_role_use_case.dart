import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:test_role/core/core.dart';
import 'package:test_role/domain/domain.dart';
import 'package:test_role/helper/src/app_exception.dart';

@injectable
class InsertTestRoleUseCase extends BaseUseCase<bool?, TestRoleEntity> {
  final TestRoleRepo _repo;

  InsertTestRoleUseCase(this._repo);

  @override
  Future<Either<AppException, bool?>> call(TestRoleEntity params) async {
    return await _repo.insertTestRole(params);
  }
}
