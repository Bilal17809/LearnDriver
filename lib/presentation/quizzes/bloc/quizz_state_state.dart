part of 'quizz_state_cubit.dart';

@freezed
class QuizzesState with _$QuizzesState {
  const factory QuizzesState({
    required Resource<List<dynamic>> questions,
    @Default([]) List<Map<String, dynamic>> results,
    @Default(0) int currentIndex,
  }) = _QuizzesState;
}

