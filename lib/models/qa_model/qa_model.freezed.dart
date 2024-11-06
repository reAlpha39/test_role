// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qa_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QaModel _$QaModelFromJson(Map<String, dynamic> json) {
  return _QaModel.fromJson(json);
}

/// @nodoc
mixin _$QaModel {
  int? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  List<String>? get answers => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  /// Serializes this QaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QaModelCopyWith<QaModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QaModelCopyWith<$Res> {
  factory $QaModelCopyWith(QaModel value, $Res Function(QaModel) then) =
      _$QaModelCopyWithImpl<$Res, QaModel>;
  @useResult
  $Res call({int? id, String? question, List<String>? answers, String? answer});
}

/// @nodoc
class _$QaModelCopyWithImpl<$Res, $Val extends QaModel>
    implements $QaModelCopyWith<$Res> {
  _$QaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answers = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QaModelImplCopyWith<$Res> implements $QaModelCopyWith<$Res> {
  factory _$$QaModelImplCopyWith(
          _$QaModelImpl value, $Res Function(_$QaModelImpl) then) =
      __$$QaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? question, List<String>? answers, String? answer});
}

/// @nodoc
class __$$QaModelImplCopyWithImpl<$Res>
    extends _$QaModelCopyWithImpl<$Res, _$QaModelImpl>
    implements _$$QaModelImplCopyWith<$Res> {
  __$$QaModelImplCopyWithImpl(
      _$QaModelImpl _value, $Res Function(_$QaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answers = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$QaModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QaModelImpl implements _QaModel {
  _$QaModelImpl(
      {this.id, this.question, final List<String>? answers, this.answer})
      : _answers = answers;

  factory _$QaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QaModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? question;
  final List<String>? _answers;
  @override
  List<String>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? answer;

  @override
  String toString() {
    return 'QaModel(id: $id, question: $question, answers: $answers, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, question,
      const DeepCollectionEquality().hash(_answers), answer);

  /// Create a copy of QaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QaModelImplCopyWith<_$QaModelImpl> get copyWith =>
      __$$QaModelImplCopyWithImpl<_$QaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QaModelImplToJson(
      this,
    );
  }
}

abstract class _QaModel implements QaModel {
  factory _QaModel(
      {final int? id,
      final String? question,
      final List<String>? answers,
      final String? answer}) = _$QaModelImpl;

  factory _QaModel.fromJson(Map<String, dynamic> json) = _$QaModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get question;
  @override
  List<String>? get answers;
  @override
  String? get answer;

  /// Create a copy of QaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QaModelImplCopyWith<_$QaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
