import 'package:flutter/material.dart';
import 'create_task_btn.dart';
import 'task_title.dart';
import 'date.dart';
import 'time.dart';
import 'alarm.dart';

class CreateTaskBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget> [
          TaskTitle(),
          Date(),
          Time(),
          Alarm(),
          CreateTaskButton()
        ]
    );
  }
}
