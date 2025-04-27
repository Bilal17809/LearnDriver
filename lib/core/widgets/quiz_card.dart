import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data/models/categoy_model/sub_category_model.dart';

class QuizCard extends StatefulWidget {
  final String text;
  final List<Answer> options;
  final VoidCallback onNext;
  final Function onOptionSelected;


  const QuizCard({
    super.key,
    required this.text,
    required this.options,
    required this.onNext,
    required this.onOptionSelected,

  });

  @override
  State<QuizCard> createState() => _QuizCardState();
}
class _QuizCardState extends State<QuizCard> {
  int? selectedOptionIndex;
  int? correctOptionIndex;
  bool showIcon = false;
  bool isOpen=false;

  void handleOptionTap(int index) {
    if(isOpen) return;
    setState(() {
      selectedOptionIndex = index;
      correctOptionIndex = widget.options.indexWhere((option) => option.isCorrect);
      showIcon = true;
      isOpen=true;
    });
    widget.onOptionSelected(widget.options[index]);

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showIcon = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      elevation: 2,
      color: Colors.green.shade50,
      shadowColor: Colors.black.withOpacity(0.6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text, // Display question
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ...List.generate(widget.options.length, (index) {
              final optionLabel = String.fromCharCode(97 + index);
              final option = widget.options[index];
              final isSelected = selectedOptionIndex == index;
              final isCorrect = correctOptionIndex == index;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => handleOptionTap(index),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isSelected
                            ? (option.isCorrect ? Colors.green : Colors.red)
                            : Colors.green.shade400,
                      ),
                      color: isSelected
                          ? (option.isCorrect
                          ? Colors.green.shade100
                          : Colors.red.shade100)
                          : null,
                    ),
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            optionLabel,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      title: Text(option.text),
                      trailing: isSelected || isCorrect
                          ? Icon(
                        isCorrect
                            ? Icons.check_circle
                            : Icons.cancel,
                        color: isCorrect ? Colors.green : Colors.red,
                      )
                          : null,
                    ),
                  ),
                ),
              );
            }),
            if (showIcon) ...[
              const SizedBox(height: 20),
              Center(
                child: Icon(
                  selectedOptionIndex == correctOptionIndex ? Icons.check_circle : Icons.cancel,
                  color: selectedOptionIndex == correctOptionIndex ? Colors.green : Colors.red,
                  size: 40,
                ),
              ),
            ],
            const Spacer(),
            ElevatedButton(
              onPressed: widget.onNext,
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}