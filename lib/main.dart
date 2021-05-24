import 'package:flutter/material.dart';
import 'login.dart';


void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      // home: Scaffold(
      //   backgroundColor: Colors.grey.shade900,
      //   body: SafeArea(
      //     child: Padding(
      //       padding: EdgeInsets.all(10),
      //       child: Home(),
      //     ),
      //   ),
      // ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  get scoreKeepeer => Text("Hello",style: TextStyle(
    fontSize: 15,
    color: Colors.white54,
  ),);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                "This is where the question text will go",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white54,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "add",
                  style: TextStyle(color: Colors.white),
                ),
              ),
          ),
        ),
      ],
    );
  }
}
