import 'package:fpdart/fpdart.dart';
import 'package:test_role/domain/entities/test_role_entity/test_role_entity.dart';
import 'package:test_role/helper/helper.dart';

abstract class TestRoleRepo {
  Future<Either<AppException, bool?>> insertTestRole(TestRoleEntity record);
}
