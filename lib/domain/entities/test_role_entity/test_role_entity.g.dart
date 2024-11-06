// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_role_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestRoleEntityImpl _$$TestRoleEntityImplFromJson(Map<String, dynamic> json) =>
    _$TestRoleEntityImpl(
      name: json['name'] as String?,
      noHp: json['no_hp'] as String?,
      takeDate: json['take_date'] == null
          ? null
          : DateTime.parse(json['take_date'] as String),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$TestRoleEntityImplToJson(
        _$TestRoleEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'no_hp': instance.noHp,
      'take_date': instance.takeDate?.toIso8601String(),
      'image': instance.image,
    };
