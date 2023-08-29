import 'package:flutter/material.dart';
import 'package:quiz_udemy/answer_button.dart';
import 'package:quiz_udemy/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  var currentQuestionIndex = 0;

  void changeQuestion() {
    setState(() {
      currentQuestionIndex ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    // margin: const EdgeInsets.all(40),
    return Container(
      margin: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            /*  AnswerButton(currentQuestion.answers[0], () {}),
              AnswerButton(currentQuestion.answers[1], () {}),
              AnswerButton(currentQuestion.answers[2], () {}),
              AnswerButton(currentQuestion.answers[3], () {}), */
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer, changeQuestion);
            })
          ],
        ),
      ),
    );
  }
}
