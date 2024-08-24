import 'package:flutter/material.dart';
import 'package:quiz/dummy_db.dart';

class Optionscard extends StatelessWidget {
  const Optionscard(
      {super.key,
      required this.questionIndex,
      required this.optionindex,
      this.onTap,
      required this.col,
      this.passindex});
  final int? passindex;
  final int questionIndex;
  final int optionindex;
  final void Function()? onTap;
  final Color col;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.transparent,
            border: Border.all(color: col, width: 2)),
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DummyDb.categorizedQuestions[passindex!][questionIndex]
                        ['options'][optionindex]
                    .toString(),
                style: const TextStyle(color: Colors.white, fontSize: 18),
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
    );
  }
}
