import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz/dummy_db.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey,
                ),
                child: Expanded(
                  child: Text(
                    DummyDb.questions[questionIndex]['question'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.grey, width: 2)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DummyDb.questions[questionIndex]['options']
                                    [questionIndex]
                                .toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.circle_outlined,
                                color: Colors.white,
                                size: 28,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            if (questionIndex < DummyDb.questions.length - 1) {
              setState(() {
                questionIndex++;
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    'End',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )));
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
}
