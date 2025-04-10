import 'package:flutter/material.dart';
import '../models/question.dart';

class Quiz extends StatefulWidget {
  final List<QuizQuestion> questions;
  const Quiz({super.key, required this.questions});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Quiz")));
  }
}
