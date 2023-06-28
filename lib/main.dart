import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizApp(),
          ),
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'This is Question 1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            minimumSize: const Size(100, 80),
          ),
          onPressed: () {

          },
          child: const Text(
            'True',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            minimumSize: const Size(100, 80),
          ),
          child: const Text(
            'False',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          onPressed: (){

          },
        ),
        const SizedBox(
          height: 80.0,
        ),

        const Row(
          children: [
            Icon(
              Icons.check,
              size: 40,
              color: Colors.white,
            ),
            Icon(
              Icons.close,
              size: 40,
              color: Colors.red,
            ),
          ],
        ),

        const SizedBox(
          height: 80.0,
        ),
      ],
    );
  }
}
