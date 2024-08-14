import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/dummy_db.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.correctAns});
  final int correctAns;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Icon(
                    Icons.grade,
                    color: Colors.amber,
                    size: index == 1 ? 80 : 50,
                  ),
                )),
            const Text(
              'Congrats!',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            Text(
              '${correctAns + 1} / ${DummyDb.questions.length}',
              style: const TextStyle(color: Colors.green, fontSize: 35),
            ),
            Text(
              'Correct Answers:$correctAns',
              style: const TextStyle(color: Colors.white, fontSize: 19),
            ),
            Text(
              'Wrong Answers:${DummyDb.questions.length - correctAns}',
              style: const TextStyle(color: Colors.white, fontSize: 19),
            ),
            const Text(
              'Skipped Questions:0',
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                      border: Border.all(color: Colors.white, width: 3)),
                  child: const Center(
                    child: Text(
                      'Restart',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
