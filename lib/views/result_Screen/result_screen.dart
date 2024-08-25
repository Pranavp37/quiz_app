import 'package:flutter/material.dart';
import 'package:quiz/dummy_db.dart';
import 'package:quiz/views/category_Screen/category_screen.dart';
import 'package:quiz/views/home_screen/home_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.correctAns, this.passIndex});
  final int correctAns;
  final int? passIndex;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    getpercentage();
    super.initState();
  }

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
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      bottom: index == 1 ? 50 : 0,
                      left: 15,
                      right: 15,
                    ),
                    child: Icon(
                      Icons.grade,
                      color:
                          index < getpercentage() ? Colors.amber : Colors.grey,
                      size: index == 1 ? 80 : 50,
                    ),
                  ),
                )),
            const Text(
              'Congrats!',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            Text(
              '${widget.correctAns} / ${DummyDb.categorizedQuestions[widget.passIndex!].length}',
              style: const TextStyle(color: Colors.green, fontSize: 35),
            ),
            Text(
              'Correct Answers:${widget.correctAns}',
              style: const TextStyle(color: Colors.white, fontSize: 19),
            ),
            Text(
              'Wrong Answers:${DummyDb.categorizedQuestions[widget.passIndex!].length - widget.correctAns}',
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
              onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryScreen(),
                  )),
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

  int getpercentage() {
    double percentage = (widget.correctAns /
            DummyDb.categorizedQuestions[widget.passIndex!].length) *
        100;
    if (percentage >= 80) {
      return 3;
    } else if (percentage >= 50) {
      return 2;
    } else if (percentage >= 30) {
      return 1;
    } else {
      return 0;
    }
  }
}
