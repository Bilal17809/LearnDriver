import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/resources/resources.dart';

part 'quizz_state_state.dart';
part 'quizz_state_cubit.freezed.dart';

class QuizCubit extends Cubit<QuizzesState> {
  QuizCubit() : super(QuizzesState(questions: const Resource.initial()));

  void loadQuestions(List<dynamic> data) {
    emit(state.copyWith(questions: Resource.success(data: data)));
  }

  void handleAnswer({
    required String question,
    required String selectedAnswer,
    required bool isCorrect,
  }) {
    final updatedResults = List<Map<String, dynamic>>.from(state.results)
      ..add({
        "question": question,
        "selectedAnswer": selectedAnswer,
        "isCorrect": isCorrect,
      });

    emit(state.copyWith(results: updatedResults));
  }

  void nextQuestion() {
    emit(state.copyWith(currentIndex: state.currentIndex + 1));
  }

  int get correctAnswersCount => state.results.where((r) => r['isCorrect']).length;

  int get wrongAnswersCount => state.results.length - correctAnswersCount;

  bool get isLastQuestion => state.currentIndex == (state.questions.maybeWhen(
    success: (data) => data.length,
    orElse: () => 0,
  ) - 1);

  void reset() {
    emit(QuizzesState(questions: const Resource.initial()));
  }
}
