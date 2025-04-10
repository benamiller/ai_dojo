import 'package:flutter/material.dart';
import 'package:myapp/components/quiz.dart';
import 'package:myapp/models/question.dart';

class Rush extends StatefulWidget {
  const Rush({super.key, required this.title});

  final String title;

  @override
  State<Rush> createState() => _RushState();
}

class _RushState extends State<Rush> {
  final List<QuizQuestion> questions = [
    QuizQuestion(
      questionText: "Question 1",
      answerOptions: ["Option A", "Option B", "Option C"],
      correctAnswer: "Option A",
    ),
    QuizQuestion(
      questionText: "Question 2",
      answerOptions: ["Option A", "Option B", "Option C"],
      correctAnswer: "Option B",
    ),
    QuizQuestion(
      questionText: "Question 3",
      answerOptions: ["Option A", "Option B", "Option C"],
      correctAnswer: "Option C",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Quiz(questions: questions),
    );
  }
}
