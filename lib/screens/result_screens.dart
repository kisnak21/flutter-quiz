import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:quizz/main.dart';
import 'package:quizz/quiz.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xff252c4a);
    Color secondColor = Color(0xff117eeb);
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congratulations",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "your score is :",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "${widget.score}",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            MaterialButton(
              onPressed: () {
                CoolAlert.show(
                    context: context,
                    type: CoolAlertType.confirm,
                    confirmBtnText: 'Yes',
                    confirmBtnColor: Colors.green,
                    cancelBtnText: 'No',
                    onConfirmBtnTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Quizz()));
                    });
              },
              color: Colors.amber,
              textColor: Colors.white,
              child: Text("Play again"),
            )
          ],
        ),
      ),
    );
  }
}
