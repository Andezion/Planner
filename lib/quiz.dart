import 'package:flutter/material.dart';
import 'package:basics/start_screen.dart';
import 'package:basics/questions_screen.dart';

var colors = [Colors.red, Colors.black];

class Quiz extends StatefulWidget
{
  const Quiz({super.key});
  @override
  State<Quiz> createState()
  {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>
{
  Widget activeScreen = const StartScreen(switchScreen);

  void switchScreen()
  {
    setState(()
    {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context)
  {
    return
      MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: colors,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                )
            ),
            child: activeScreen,
          )
      ),
    );
  }
}