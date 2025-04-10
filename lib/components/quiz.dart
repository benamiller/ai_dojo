import 'package:flutter/material.dart';
import '../models/question.dart';

class Quiz extends StatefulWidget {
  final List<QuizQuestion> questions;
  const Quiz({super.key, required this.questions});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _quizIndex = 0;

  void _incrementQuizIndex() {
    if (_quizIndex < widget.questions.length - 1) {
      setState(() {
        _quizIndex++;
      });
    }
  }

  void _decrementQuizIndex() {
    if (_quizIndex > 0) {
      setState(() {
        _quizIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(widget.questions[_quizIndex].questionText),
              const SizedBox(height: 12),
              ...widget.questions[_quizIndex].answerOptions.map((answer) {
                return Column(
                  children: [
                    Text(answer),
                    ElevatedButton(
                      onPressed: () {
                        // Handle answer selection
                      },
                      child: Text("-"),
                    ),
                  ],
                );
              }).toList(),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _decrementQuizIndex,
                  child: const Text("Previous Question"),
                ),
                ElevatedButton(
                  onPressed: _incrementQuizIndex,
                  child: const Text('Next Question'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
