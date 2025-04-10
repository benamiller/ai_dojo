import 'package:flutter/material.dart';

class Rush extends StatefulWidget {
  const Rush({super.key, required this.title});

  final String title;

  @override
  State<Rush> createState() => _RushState();
}

class _RushState extends State<Rush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Text("Testing"),
    );
  }
}
