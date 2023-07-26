import 'package:freezed_annotation/freezed_annotation.dart';

part 'qa_model.freezed.dart';
part 'qa_model.g.dart';

@freezed
class QaModel with _$QaModel {
  factory QaModel({
    int? id,
    String? question,
    List<String>? answers,
  }) = _QaModel;

  factory QaModel.fromJson(Map<String, dynamic> json) =>
      _$QaModelFromJson(json);
}
