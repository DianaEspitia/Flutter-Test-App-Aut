import 'package:flutter/material.dart';
import 'create_task_btn.dart';

class CreateTaskBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget> [
          CreateTaskButton()
        ]
    );
  }
}
