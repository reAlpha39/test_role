// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QaModelImpl _$$QaModelImplFromJson(Map<String, dynamic> json) =>
    _$QaModelImpl(
      id: (json['id'] as num?)?.toInt(),
      question: json['question'] as String?,
      answers:
          (json['answers'] as List<dynamic>?)?.map((e) => e as String).toList(),
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$QaModelImplToJson(_$QaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answers': instance.answers,
      'answer': instance.answer,
    };
