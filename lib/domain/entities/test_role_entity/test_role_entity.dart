import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_role_entity.freezed.dart';
part 'test_role_entity.g.dart';

@freezed
class TestRoleEntity with _$TestRoleEntity {
  factory TestRoleEntity({
    String? name,
    @JsonKey(name: 'no_hp') String? noHp,
    @JsonKey(name: 'take_date') DateTime? takeDate,
    String? image,
    @JsonKey(name: 'result_id') int? resultId,
  }) = _TestRoleEntity;

  factory TestRoleEntity.fromJson(Map<String, dynamic> json) =>
      _$TestRoleEntityFromJson(json);
}
