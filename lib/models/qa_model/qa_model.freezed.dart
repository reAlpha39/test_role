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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QaModel _$QaModelFromJson(Map<String, dynamic> json) {
  return _QaModel.fromJson(json);
}

/// @nodoc
mixin _$QaModel {
  int? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  List<String>? get answers => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_QaModelCopyWith<$Res> implements $QaModelCopyWith<$Res> {
  factory _$$_QaModelCopyWith(
          _$_QaModel value, $Res Function(_$_QaModel) then) =
      __$$_QaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? question, List<String>? answers, String? answer});
}

/// @nodoc
class __$$_QaModelCopyWithImpl<$Res>
    extends _$QaModelCopyWithImpl<$Res, _$_QaModel>
    implements _$$_QaModelCopyWith<$Res> {
  __$$_QaModelCopyWithImpl(_$_QaModel _value, $Res Function(_$_QaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? answers = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_QaModel(
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
class _$_QaModel implements _QaModel {
  _$_QaModel({this.id, this.question, final List<String>? answers, this.answer})
      : _answers = answers;

  factory _$_QaModel.fromJson(Map<String, dynamic> json) =>
      _$$_QaModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QaModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question,
      const DeepCollectionEquality().hash(_answers), answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QaModelCopyWith<_$_QaModel> get copyWith =>
      __$$_QaModelCopyWithImpl<_$_QaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QaModelToJson(
      this,
    );
  }
}

abstract class _QaModel implements QaModel {
  factory _QaModel(
      {final int? id,
      final String? question,
      final List<String>? answers,
      final String? answer}) = _$_QaModel;

  factory _QaModel.fromJson(Map<String, dynamic> json) = _$_QaModel.fromJson;

  @override
  int? get id;
  @override
  String? get question;
  @override
  List<String>? get answers;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_QaModelCopyWith<_$_QaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
