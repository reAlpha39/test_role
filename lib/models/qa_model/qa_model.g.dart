// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QaModel _$$_QaModelFromJson(Map<String, dynamic> json) => _$_QaModel(
      id: json['id'] as int?,
      question: json['question'] as String?,
      answers:
          (json['answers'] as List<dynamic>?)?.map((e) => e as String).toList(),
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_QaModelToJson(_$_QaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answers': instance.answers,
      'answer': instance.answer,
    };
