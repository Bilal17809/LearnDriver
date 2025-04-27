import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/widgets/quiz_card.dart';
import '../../../data/local_data_sources/local_data_sources.dart';
import '../../result/view/result_view.dart';
import '../bloc/quizz_state_cubit.dart';

// class QuizzView extends StatefulWidget {
//   final int categoryId;
//   final String name;
//   final int index;
//   final List data;
//
//   const QuizzView({
//     super.key,
//     required this.name,
//     required this.categoryId,
//     required this.index,
//     required this.data,
//   });
//
//   @override
//   State<QuizzView> createState() => _QuizzViewState();
// }
// class _QuizzViewState extends State<QuizzView> {
//   final List<Map<String, dynamic>> results = [];
//   final PageController pageController = PageController(initialPage: 0);
//
//   void handleAnswer({
//     required String question,
//     required String selectedAnswer,
//     required bool isCorrect,
//   }) {
//     results.add({
//       "question": question,
//       "selectedAnswer": selectedAnswer,
//       "isCorrect": isCorrect,
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final questions = widget.data;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Column(
//           children: [
//             Text("${widget.name} (Category ID: ${widget.categoryId})"),
//             Text("${widget.index}"),
//           ],
//         ),
//       ),
//       body: PageView.builder(
//         controller: pageController,
//         itemCount: questions.length,
//         physics: const NeverScrollableScrollPhysics(),
//         itemBuilder: (context, index) {
//           final question = questions[index];
//           final answers = question.answers;
//           final totalAns=results.length;
//           final correctAns=results.where((res)=>res['isCorrect']).length;
//           final wrongAns=totalAns-correctAns;
//
//           return QuizCard(
//             text: question.text,
//             options: answers,
//             onOptionSelected: (selectedOption) {
//               final isCorrect = selectedOption.isCorrect;
//               handleAnswer(
//                 question: question.text,
//                 selectedAnswer: selectedOption.text,
//                 isCorrect: isCorrect,
//               );
//             },
//             onNext: () async{
//               if (index < questions.length - 1) {
//                 pageController.nextPage(
//                   duration: const Duration(milliseconds: 300),
//                   curve: Curves.easeInOut,
//                 );
//               } else {
//                 String quizKey = '${widget.categoryId}_${widget.index}';
//                 await SharedPreferencesHelper.setInt('${quizKey}_ansC', correctAns);
//                 await SharedPreferencesHelper.setInt('${quizKey}_ansW', wrongAns);
//
//
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => ResultView(
//                       results: results,
//                       correctAns:correctAns,
//                       wrongAns:wrongAns,),
//                   ),
//                 );
//               }
//             },
//           );
//         },
//       ),
//     );
//   }
// }
class QuizzView extends StatefulWidget {
  final int categoryId;
  final String name;
  final int index;
  final List data;

  const QuizzView({
    super.key,
    required this.name,
    required this.categoryId,
    required this.index,
    required this.data,
  });

  @override
  State<QuizzView> createState() => _QuizzViewState();
}

class _QuizzViewState extends State<QuizzView> {
  late final PageController pageController;
  late final QuizCubit quizCubit;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    quizCubit = QuizCubit();
    quizCubit.loadQuestions(widget.data);
  }

  @override
  void dispose() {
    pageController.dispose();
    quizCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("${widget.name} (Category ID: ${widget.categoryId})"),
            Text("${widget.index}"),
          ],
        ),
      ),
      body: BlocBuilder<QuizCubit, QuizzesState>(
        bloc: quizCubit,
        builder: (context, state) {
          return state.questions.maybeWhen(
            success: (questions) {
              if (questions.isEmpty) {
                return const Center(child: Text("No questions available"));
              }
              final question = questions[state.currentIndex];
              final answers = question.answers;

              return QuizCard(
                text: question.text,
                options: answers,
                onOptionSelected: (selectedOption) {
                  quizCubit.handleAnswer(
                    question: question.text,
                    selectedAnswer: selectedOption.text,
                    isCorrect: selectedOption.isCorrect,
                  );
                },
                onNext: () async {
                  if (!quizCubit.isLastQuestion) {
                    quizCubit.nextQuestion();
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    String quizKey = '${widget.categoryId}_${widget.index}';
                    await SharedPreferencesHelper.setInt('${quizKey}_ansC', quizCubit.correctAnswersCount);
                    await SharedPreferencesHelper.setInt('${quizKey}_ansW', quizCubit.wrongAnswersCount);

                    if (!mounted) return;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ResultView(
                          results: quizCubit.state.results,
                          correctAns: quizCubit.correctAnswersCount,
                          wrongAns: quizCubit.wrongAnswersCount,
                        ),
                      ),
                    );
                  }
                },
              );
            },
            loading: (_) => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
