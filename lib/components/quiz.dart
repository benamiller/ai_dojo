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
        Positioned(
          top: 0,
          child: Column(
            children: [
              Card(child: Text(widget.questions[_quizIndex].questionText)),
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
