import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/dummy_db.dart';
import 'package:quiz/views/result_Screen/result_screen.dart';
import 'package:quiz/views/widgets/optionsCard/optionscard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    this.passindex,
  });
  final int? passindex;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int questionIndex = 0;
  int? answerIndex;
  int rightAnswerCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: Column(
            children: [
              _buildQuestionSection(widget.passindex!),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Optionscard(
                    onTap: () {
                      if (answerIndex == null) {
                        setState(() {
                          answerIndex = index;
                        });
                        if (answerIndex ==
                            DummyDb.categorizedQuestions[widget.passindex!]
                                [questionIndex]['answer']) {
                          rightAnswerCount++;
                        }
                      }
                    },
                    questionIndex: questionIndex,
                    optionindex: index,
                    passindex: widget.passindex,
                    col: getColor(index),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: answerIndex == null
            ? null
            : GestureDetector(
                onTap: () {
                  if (questionIndex < DummyDb.questions.length - 1) {
                    answerIndex = null;

                    setState(() {
                      questionIndex++;
                    });
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            correctAns: rightAnswerCount,
                          ),
                        ));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text('Next',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  ),
                ),
              ));
  }

  Color getColor(int index) {
    if (answerIndex != null) {
      if (index ==
          DummyDb.categorizedQuestions[widget.passindex!][questionIndex]
              ['answer']) {
        return Colors.green;
      }
      if (answerIndex == index) {
        if (answerIndex ==
            DummyDb.categorizedQuestions[widget.passindex!][questionIndex]
                ['answer']) {
          return Colors.green;
        } else {
          return Colors.red;
        }
      }
    }
    return Colors.white;
  }

  Widget _buildQuestionSection(int passindex) {
    return Expanded(
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.grey,
          ),
          child: Text(
            DummyDb.categorizedQuestions[widget.passindex!][questionIndex]
                ['question'],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        answerIndex ==
                DummyDb.categorizedQuestions[widget.passindex!][questionIndex]
                    ['answer']
            ? Lottie.asset('assets/lottie/Animation - 1724077041018.json')
            : const SizedBox(),
      ]),
    );
  }
}
