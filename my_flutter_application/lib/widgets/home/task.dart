

import 'package:flutter/material.dart';

class Task extends StatelessWidget {

  String task = "";
  String time = "";

  Task(this.task, this.time);

  @override
  Widget build(BuildContext context) {

    final taskName = Container(
      margin: EdgeInsets.only(
          top: 60.0,
          left: 60.0
      ),
      child: Text(
        task,
        style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final taskTime = Container(
      margin: EdgeInsets.only(
          top: 5.0,
          left: 60.0
      ),
      child: Text(
        time,
        style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
        ),
      ),
    );

    final arrow = Container(
      margin: EdgeInsets.only(
          top: 50.0,
        right: 40.0
      ),
      child: Icon(
        Icons.arrow_forward_ios
      ),
    );


    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            taskName,
            taskTime
          ],
        ),
        arrow
      ],
    );
  }
}
