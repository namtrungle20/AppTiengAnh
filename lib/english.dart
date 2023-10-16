import 'package:app_tienganh/scaffold_body.dart';
import 'package:flutter/material.dart';
import 'package:app_tienganh/questions.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() {
    return _EnglishState();
  }
}

class _EnglishState extends State<English> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartBody(switchScreen);
    if (){
      screenWidget= const QuestionsScreen()
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 148, 61, 223),
                Color.fromARGB(50, 98, 69, 204)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
