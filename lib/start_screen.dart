import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget
{
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context)
  {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset('assets/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(height: 80,
          ),
          const Text(
            'Do you like dicks?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: ()
              {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: Icon(Icons.arrow_forward_rounded),
              label: Text(
                  'Start Quiz',
                style: TextStyle(fontSize: 30),
              )
          )
        ],
      ),
    );
  }
}