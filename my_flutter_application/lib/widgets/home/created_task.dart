import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:my_flutter_application/screens/createTask.dart';


import '../../models/model_task.dart';

class CreatedTask extends StatefulWidget {
  //const CreatedTask({Key? key}) : super(key: key);

  final String task;
  final String time;
  final ModelTask? myTask;

  CreatedTask(this.task, this.time, this.myTask); //constructor posicional        

  @override
  State<CreatedTask> createState() => _CreatedTaskState();
}

class _CreatedTaskState extends State<CreatedTask> {

  void _onTap() {
    print("hola");
    Navigator.push(context, MaterialPageRoute(builder: (context) => CreateTaskScreen(task: widget.myTask, appBarTitle: "Update",buttonTitle: "Update Task",)));
  }

  @override
  Widget build(BuildContext context) {
    final arrow = Icon(Icons.arrow_forward_ios);

    return InkWell(
      onTap: _onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [CustomText(text: widget.task), CustomText(text: widget.time)],
            ),
            arrow
          ],
        ),
      ),
    );
  }
}


class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key, required this.text, this.fontWeight = FontWeight.normal})
      : super(key: key);

  final String text;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15.0,
        color: Colors.black,
        fontWeight: fontWeight,
      ),
    );
  }
}

