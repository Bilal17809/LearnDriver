// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      hint: json['hint'] as String,
      identifier: json['identifier'] as String,
      numberOfCorrectAnswers: (json['numberOfCorrectAnswers'] as num).toInt(),
      text: json['text'] as String,
      topicId: (json['topicId'] as num).toInt(),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      'hint': instance.hint,
      'identifier': instance.identifier,
      'numberOfCorrectAnswers': instance.numberOfCorrectAnswers,
      'text': instance.text,
      'topicId': instance.topicId,
    };

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      isCorrect: json['isCorrect'] as bool,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'isCorrect': instance.isCorrect,
      'text': instance.text,
    };
