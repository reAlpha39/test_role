// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_role_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestRoleEntity _$TestRoleEntityFromJson(Map<String, dynamic> json) {
  return _TestRoleEntity.fromJson(json);
}

/// @nodoc
mixin _$TestRoleEntity {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_hp')
  String? get noHp => throw _privateConstructorUsedError;
  @JsonKey(name: 'prodi')
  String? get prodi => throw _privateConstructorUsedError;
  @JsonKey(name: 'take_date')
  DateTime? get takeDate => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'result_id')
  int? get resultId => throw _privateConstructorUsedError;

  /// Serializes this TestRoleEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestRoleEntityCopyWith<TestRoleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestRoleEntityCopyWith<$Res> {
  factory $TestRoleEntityCopyWith(
          TestRoleEntity value, $Res Function(TestRoleEntity) then) =
      _$TestRoleEntityCopyWithImpl<$Res, TestRoleEntity>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'no_hp') String? noHp,
      @JsonKey(name: 'prodi') String? prodi,
      @JsonKey(name: 'take_date') DateTime? takeDate,
      String? image,
      @JsonKey(name: 'result_id') int? resultId});
}

/// @nodoc
class _$TestRoleEntityCopyWithImpl<$Res, $Val extends TestRoleEntity>
    implements $TestRoleEntityCopyWith<$Res> {
  _$TestRoleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? noHp = freezed,
    Object? prodi = freezed,
    Object? takeDate = freezed,
    Object? image = freezed,
    Object? resultId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      noHp: freezed == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String?,
      prodi: freezed == prodi
          ? _value.prodi
          : prodi // ignore: cast_nullable_to_non_nullable
              as String?,
      takeDate: freezed == takeDate
          ? _value.takeDate
          : takeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      resultId: freezed == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestRoleEntityImplCopyWith<$Res>
    implements $TestRoleEntityCopyWith<$Res> {
  factory _$$TestRoleEntityImplCopyWith(_$TestRoleEntityImpl value,
          $Res Function(_$TestRoleEntityImpl) then) =
      __$$TestRoleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'no_hp') String? noHp,
      @JsonKey(name: 'prodi') String? prodi,
      @JsonKey(name: 'take_date') DateTime? takeDate,
      String? image,
      @JsonKey(name: 'result_id') int? resultId});
}

/// @nodoc
class __$$TestRoleEntityImplCopyWithImpl<$Res>
    extends _$TestRoleEntityCopyWithImpl<$Res, _$TestRoleEntityImpl>
    implements _$$TestRoleEntityImplCopyWith<$Res> {
  __$$TestRoleEntityImplCopyWithImpl(
      _$TestRoleEntityImpl _value, $Res Function(_$TestRoleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? noHp = freezed,
    Object? prodi = freezed,
    Object? takeDate = freezed,
    Object? image = freezed,
    Object? resultId = freezed,
  }) {
    return _then(_$TestRoleEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      noHp: freezed == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String?,
      prodi: freezed == prodi
          ? _value.prodi
          : prodi // ignore: cast_nullable_to_non_nullable
              as String?,
      takeDate: freezed == takeDate
          ? _value.takeDate
          : takeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      resultId: freezed == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestRoleEntityImpl implements _TestRoleEntity {
  _$TestRoleEntityImpl(
      {this.name,
      @JsonKey(name: 'no_hp') this.noHp,
      @JsonKey(name: 'prodi') this.prodi,
      @JsonKey(name: 'take_date') this.takeDate,
      this.image,
      @JsonKey(name: 'result_id') this.resultId});

  factory _$TestRoleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestRoleEntityImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'no_hp')
  final String? noHp;
  @override
  @JsonKey(name: 'prodi')
  final String? prodi;
  @override
  @JsonKey(name: 'take_date')
  final DateTime? takeDate;
  @override
  final String? image;
  @override
  @JsonKey(name: 'result_id')
  final int? resultId;

  @override
  String toString() {
    return 'TestRoleEntity(name: $name, noHp: $noHp, prodi: $prodi, takeDate: $takeDate, image: $image, resultId: $resultId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestRoleEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.noHp, noHp) || other.noHp == noHp) &&
            (identical(other.prodi, prodi) || other.prodi == prodi) &&
            (identical(other.takeDate, takeDate) ||
                other.takeDate == takeDate) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, noHp, prodi, takeDate, image, resultId);

  /// Create a copy of TestRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestRoleEntityImplCopyWith<_$TestRoleEntityImpl> get copyWith =>
      __$$TestRoleEntityImplCopyWithImpl<_$TestRoleEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestRoleEntityImplToJson(
      this,
    );
  }
}

abstract class _TestRoleEntity implements TestRoleEntity {
  factory _TestRoleEntity(
      {final String? name,
      @JsonKey(name: 'no_hp') final String? noHp,
      @JsonKey(name: 'prodi') final String? prodi,
      @JsonKey(name: 'take_date') final DateTime? takeDate,
      final String? image,
      @JsonKey(name: 'result_id') final int? resultId}) = _$TestRoleEntityImpl;

  factory _TestRoleEntity.fromJson(Map<String, dynamic> json) =
      _$TestRoleEntityImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'no_hp')
  String? get noHp;
  @override
  @JsonKey(name: 'prodi')
  String? get prodi;
  @override
  @JsonKey(name: 'take_date')
  DateTime? get takeDate;
  @override
  String? get image;
  @override
  @JsonKey(name: 'result_id')
  int? get resultId;

  /// Create a copy of TestRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestRoleEntityImplCopyWith<_$TestRoleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
