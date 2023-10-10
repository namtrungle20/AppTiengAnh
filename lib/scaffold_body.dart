import 'package:flutter/material.dart';

class StartBody extends StatelessWidget {
  const StartBody(this.startEnglish, {super.key});
  final void Function() startEnglish;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(115, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          const Text(
            "chơi nào",
            style: TextStyle(
              color: Color.fromARGB(255, 39, 53, 122),
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          OutlinedButton.icon(
            onPressed: startEnglish,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 114, 180, 245),
            ),
            icon: const Icon(Icons.ac_unit_sharp),
            label: const Text('Start'),
          )
        ],
      ),
    );
  }
}
