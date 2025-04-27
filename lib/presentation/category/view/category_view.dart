import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/resources/resources.dart';
import '../../../core/routes/type_safe_route.dart';
import '../../../data/local_data_sources/local_data_sources.dart';
import '../../../data/models/categoy_model/sub_category_model.dart';
import '../../quizzes/view/quizzes.dart';
import '../bloc/sub_category_cubit.dart';

class CategoryView extends StatefulWidget {
  final String name;
  final int categoryId;
  final int catLen;

  const CategoryView({
    super.key,
    required this.name,
    required this.categoryId,
    required this.catLen
  });

  @override
  State<CategoryView> createState() => _CategoryViewState();
}
class _CategoryViewState extends State<CategoryView> {
  int correctAns = 0;
  int wrongAns = 0;
  int? index=0;

  @override
  void initState() {
    super.initState();
    context.read<CategoryCubit>().fetchSubCategories(widget.categoryId);
    _loadAnswers();
  }

  List<String> keys = SharedPreferencesHelper.getStringList('quiz_keys') ?? [];

  Future<void> _loadAnswers() async {

    if (keys.isNotEmpty) {
      String lastQuizKey = keys.last;

      final int fetchedCorrectAns =
          SharedPreferencesHelper.getInt('${lastQuizKey}_ansC') ?? 0;
      final int fetchedWrongAns =
          SharedPreferencesHelper.getInt('${lastQuizKey}_ansW') ?? 0;

      setState(() {
        correctAns = fetchedCorrectAns;
        wrongAns = fetchedWrongAns;
      });

      print("###########✅ Loaded quiz data from key: $lastQuizKey");
      print("Correct: $correctAns, Wrong: $wrongAns");
    } else {
      print("⚠️ No quiz keys found.");
    }
  }


  Future<void> _refreshData() async {
    // Reload data
    await _loadAnswers();
    context.read<CategoryCubit>().fetchSubCategories(widget.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    final int cardCount = _calculateCardCount(widget.catLen);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 5),
            Text(
              "Correct: $correctAns  |  Wrong: $wrongAns",
              style: const TextStyle(fontSize: 14, color: Colors.white70),
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: BlocBuilder<CategoryCubit, Category>(
          builder: (BuildContext context, state) {
            if (state.isQuestion is ResourceLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isQuestion is ResourceSuccess<List<Question>>) {
              final questions =
                  (state.isQuestion as ResourceSuccess<List<Question>>).data;
              final groupedQuestions = _groupQuestions(questions, 10);

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: cardCount,
                  itemBuilder: (context, index) {
                    if (index >= groupedQuestions.length) {
                      return const SizedBox.shrink();
                    }

                    final categoryQuestions = groupedQuestions[index];
                    final String cardKey = '${widget.categoryId}_$index';
                    final int cardCorrect =
                        SharedPreferencesHelper.getInt('${cardKey}_ansC') ?? 0;
                    final int cardWrong =
                        SharedPreferencesHelper.getInt('${cardKey}_ansW') ?? 0;
                    return GestureDetector(
                      onTap: () {
                        // QuizPageRoute(
                        //     name:widget.name,
                        //     categoryId:widget.categoryId,
                        //     index:index, data:categoryQuestions,).push(context);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => QuizzView(
                              categoryId: widget.categoryId,
                              name: widget.name,
                              index: index,
                              data: categoryQuestions,
                            ),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 0.01,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "$index",
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Correct: $cardCorrect\nWrong: $cardWrong",
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(height: 10),
                              Icon(Icons.lock_clock_outlined, size: 40, color: Colors.grey.shade400),
                              const SizedBox(height: 10),
                              Text(
                                widget.name,
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            } else if (state.isQuestion is ResourceError) {
              return const Center(
                child: Text("Failed to load questions. Please try again."),
              );
            } else {
              return const Center(
                child: Text("No questions available."),
              );
            }
          },
        ),
      ),
    );
  }

  int _calculateCardCount(int catLen) {
    if (catLen <= 32) {
      return 3;
    } else if (catLen <= 50) {
      return 6;
    } else if (catLen <= 80) {
      return 7;
    }
    return 10;
  }

  List<List<Question>> _groupQuestions(List<Question> questions, int chunkSize) {
    List<List<Question>> groupedQuestions = [];
    for (var i = 0; i < questions.length; i += chunkSize) {
      groupedQuestions.add(questions.sublist(
        i,
        i + chunkSize > questions.length ? questions.length : i + chunkSize,
      ));
    }
    return groupedQuestions;
  }
}


/*
itemBuilder: (context, index) {
final categoryQuestions = groupedQuestions[index];
final String cardKey = '${widget.categoryId}_$index';

final int cardCorrect =
    SharedPreferencesHelper.getInt('${cardKey}_ansC') ?? 0;
final int cardWrong =
    SharedPreferencesHelper.getInt('${cardKey}_ansW') ?? 0;

return GestureDetector(
onTap: () {
Navigator.of(context).push(
MaterialPageRoute(
builder: (context) => QuizzView(
categoryId: widget.categoryId,
name: widget.name,
index: index,
data: categoryQuestions,
),
),
);
},
child: Card(
elevation: 0.01,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(12),
),
child: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
"$index",
style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
),
Text(
"Correct: $cardCorrect\nWrong: $cardWrong",
style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
),
const SizedBox(height: 10),
Icon(Icons.lock_clock_outlined, size: 40, color: Colors.grey.shade400),
const SizedBox(height: 10),
Text(
widget.name,
style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
textAlign: TextAlign.center,
),
],
),
),
),
);
},
*/
