import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  final List<Map<String, dynamic>> results;
  final int correctAns;
  final int wrongAns;
  const ResultView({super.key,
    required this.results,
    required this.correctAns,
    required this.wrongAns
  });

  @override
  Widget build(BuildContext context) {
    int totalQuestions = results.length;
    double correctPercentage = (correctAns / totalQuestions) * 100;

    return Scaffold(
      appBar: AppBar(title: const Text("Quiz Results")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Circular indicator for percentage
          Center(
            child: SizedBox(
              width: 150,
              height: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: correctPercentage / 100,
                    strokeWidth: 10,
                    color: Colors.green,
                    backgroundColor: Colors.red,
                  ),
                  Center(
                    child: Text(
                      "${correctPercentage.toStringAsFixed(1)}%",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Display correct and wrong answers
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Correct: $correctAns",
                  style: const TextStyle(fontSize: 16, color: Colors.green),
                ),
                Text(
                  "Wrong: $wrongAns",
                  style: const TextStyle(fontSize: 16, color: Colors.red),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // List of questions with user answers
          Expanded(
            child: ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                final result = results[index];
                return ListTile(
                  title: Text(result['question']),
                  subtitle: Text("Your answer: ${result['selectedAnswer']}"),
                  trailing: Icon(
                    result['isCorrect'] ? Icons.check_circle : Icons.cancel,
                    color: result['isCorrect'] ? Colors.green : Colors.red,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
