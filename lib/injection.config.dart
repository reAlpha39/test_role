// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:test_role/blocs/animate_scroll/animate_scroll_cubit.dart'
    as _i464;
import 'package:test_role/blocs/save_test_record/save_test_record_cubit.dart'
    as _i885;
import 'package:test_role/blocs/share/share_cubit.dart' as _i913;
import 'package:test_role/blocs/step_question/step_question_cubit.dart'
    as _i470;
import 'package:test_role/data/repositories/test_role_repo_impl.dart' as _i793;
import 'package:test_role/domain/domain.dart' as _i529;
import 'package:test_role/domain/use_cases/src/insert_test_role_use_case.dart'
    as _i849;
import 'package:test_role/helper/helper.dart' as _i777;
import 'package:test_role/helper/src/api_base_helper.dart' as _i61;
import 'package:test_role/helper/src/api_helper.dart' as _i630;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i464.AnimateScrollCubit>(() => _i464.AnimateScrollCubit());
    gh.factory<_i470.StepQuestionCubit>(() => _i470.StepQuestionCubit());
    gh.factory<_i913.ShareCubit>(() => _i913.ShareCubit());
    gh.factory<_i61.ApiBaseHelper>(() => _i61.ApiBaseHelper());
    gh.factory<_i630.ApiHelper>(() => _i630.ApiHelper());
    gh.factory<_i529.TestRoleRepo>(
        () => _i793.TestRoleRepoImpl(gh<_i777.ApiBaseHelper>()));
    gh.factory<_i849.InsertTestRoleUseCase>(
        () => _i849.InsertTestRoleUseCase(gh<_i529.TestRoleRepo>()));
    gh.factory<_i885.SaveTestRecordCubit>(
        () => _i885.SaveTestRecordCubit(gh<_i529.InsertTestRoleUseCase>()));
    return this;
  }
}
