import 'package:flutter/material.dart';
import 'package:quizapp/addform.dart';
import 'package:quizapp/studentdata.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          title: Center(
            child: Text("HomeScreen"),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddForm()));
            }, icon: Icon(Icons.add),
          ),
        ),
        body: StudentData());
  }
}
