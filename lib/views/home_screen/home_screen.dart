import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
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
  late Timer _timer;
  int timeleft = 15;
  double percent = 0.0;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeleft > 0) {
          timeleft--;
          percent = (15 - timeleft) / 15;
        } else {
          _timer.cancel();
          gotoNextQuestion();
        }
      });
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              //circularPercentIndicator

              CircularPercentIndicator(
                radius: 40,
                progressColor: Colors.green,
                percent: percent,
                lineWidth: 5,
                center: Text(
                  '$timeleft',
                  style:
                      const TextStyle(color: Colors.greenAccent, fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //QuestionDisplyScreen

              _buildQuestionSection(widget.passindex!),

              const SizedBox(
                height: 20,
              ),

              //Length of Questions

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${questionIndex + 1}/${DummyDb.categorizedQuestions[widget.passindex!].length}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  LinearProgressIndicator(
                    color: Colors.green,
                    minHeight: 10,
                    value: (questionIndex + 1) /
                        DummyDb.categorizedQuestions[widget.passindex!].length,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
              ),

              //Options

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
                    answerindex: answerIndex,
                    icondata: getIcon(index),
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
                  if (questionIndex <
                      DummyDb.categorizedQuestions[widget.passindex!].length -
                          1) {
                    answerIndex = null;

                    setState(() {
                      questionIndex++;
                    });
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            passIndex: widget.passindex,
                            correctAns: rightAnswerCount,
                          ),
                        ));
                  }
                  timeleft = 15;
                  _timer.cancel();
                  startTimer();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
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

  IconData getIcon(int index) {
    if (answerIndex != null) {
      if (index ==
          DummyDb.categorizedQuestions[widget.passindex!][questionIndex]
              ['answer']) {
        return Icons.check_circle;
      }
      if (answerIndex == index) {
        if (answerIndex ==
            DummyDb.categorizedQuestions[widget.passindex!][questionIndex]
                ['answer']) {
          return Icons.check_circle;
        } else {
          return Icons.cancel;
        }
      }
    }
    return Icons.circle_outlined;
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

  gotoNextQuestion() {
    setState(() {
      questionIndex++;
      if (questionIndex >=
          DummyDb.categorizedQuestions[widget.passindex!].length) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                passIndex: widget.passindex,
                correctAns: rightAnswerCount,
              ),
            ));
      } else {
        timeleft = 15;
        _timer.cancel();
        startTimer();
      }
    });
  }
}
