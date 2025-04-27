// class Question {
//   final List<Answer> answers;
//   final String hint;
//   final String identifier;
//   final int numberOfCorrectAnswers;
//   final String text;
//   final int topicId;
//
//   Question({
//     required this.answers,
//     required this.hint,
//     required this.identifier,
//     required this.numberOfCorrectAnswers,
//     required this.text,
//     required this.topicId,
//   });
//
//   factory Question.fromJson(Map<String, dynamic> json) {
//     return Question(
//       answers: (json['answers'] as List)
//           .map((answer) => Answer.fromJson(answer))
//           .toList(),
//       hint: json['hint'] ?? '',
//       identifier: json['identifier'] ?? '',
//       numberOfCorrectAnswers: json['numberOfCorrectAnswers'] ?? 0,
//       text: json['text'] ?? '',
//       topicId: json['topicId'] ?? 0,
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'answers': answers.map((answer) => answer.toJson()).toList(),
//       'hint': hint,
//       'identifier': identifier,
//       'numberOfCorrectAnswers': numberOfCorrectAnswers,
//       'text': text,
//       'topicId': topicId,
//     };
//   }
// }
//
// class Answer {
//   final bool isCorrect;
//   final String text;
//   Answer({
//     required this.isCorrect,
//     required this.text,
//   });
//   factory Answer.fromJson(Map<String, dynamic> json) {
//     return Answer(
//       isCorrect: json['isCorrect'] ?? false,
//       text: json['text'] ?? '',
//     );
//   }
//   Map<String, dynamic> toJson() {
//     return {
//       'isCorrect': isCorrect,
//       'text': text,
//     };
//   }
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_model.freezed.dart';
part 'sub_category_model.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required List<Answer> answers,
    required String hint,
    required String identifier,
    required int numberOfCorrectAnswers,
    required String text,
    required int topicId,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    required bool isCorrect,
    required String text,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

