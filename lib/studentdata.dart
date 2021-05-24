import 'package:flutter/material.dart';

class StudentData extends StatefulWidget {
  @override
  _StudentDataState createState() => _StudentDataState();
}

class _StudentDataState extends State<StudentData> {

  List<StudentIdDetails> _studentInfo = [

    StudentIdDetails(name: "Roshan", age: "24"),
    StudentIdDetails(name: "Faidya", age: "21")

  ];



  @override
  Widget build(BuildContext context) {
    return Column
      (
      children: [
        SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
              color: Colors.lightBlue,
            borderRadius : BorderRadius.circular(20.0)
          ),
          height: 80,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(_studentInfo[0].name),
              Text(_studentInfo[0].age),

            ],),
        ),
      ],
    );
  }
}

class StudentIdDetails {
  StudentIdDetails({required this.name,required this.age});

  final String name;
  final String age;

}
