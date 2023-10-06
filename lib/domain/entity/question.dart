import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
abstract class Question with _$Question {
  const factory Question({
    required int id,
    required DateTime createdAt,
    required String contents,
    required String userId,
    required int minimumBudget,
    required int maximumBudget,
    required DateTime deadLine,
  }) = _Question;
  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
