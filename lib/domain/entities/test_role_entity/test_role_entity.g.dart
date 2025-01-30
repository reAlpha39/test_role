// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_role_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestRoleEntityImpl _$$TestRoleEntityImplFromJson(Map<String, dynamic> json) =>
    _$TestRoleEntityImpl(
      name: json['name'] as String?,
      noHp: json['no_hp'] as String?,
      prodi: json['prodi'] as String?,
      takeDate: json['take_date'] == null
          ? null
          : DateTime.parse(json['take_date'] as String),
      image: json['image'] as String?,
      resultId: (json['result_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TestRoleEntityImplToJson(
        _$TestRoleEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'no_hp': instance.noHp,
      'prodi': instance.prodi,
      'take_date': instance.takeDate?.toIso8601String(),
      'image': instance.image,
      'result_id': instance.resultId,
    };
