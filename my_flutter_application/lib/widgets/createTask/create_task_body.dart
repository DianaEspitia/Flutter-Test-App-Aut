import 'package:flutter/material.dart';
import 'package:my_flutter_application/database/database_helper.dart';
import 'package:my_flutter_application/models/model_task.dart';
import 'package:my_flutter_application/repository/task_repository.dart';
import 'package:my_flutter_application/screens/home.dart';
import 'create_task_btn.dart';
import 'task_title.dart';
import 'date.dart';
import 'time.dart';
import 'alarm.dart';

class CreateTaskBody extends StatefulWidget {
  @override
  State<CreateTaskBody> createState() => _CreateTaskBodyState();
}

class _CreateTaskBodyState extends State<CreateTaskBody> {
  late final TextEditingController titleController;
  late final DateTime _taskDate;
  late final DateTime _taskTime;

  @override
  void initState() {
    titleController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTitle(
          controller: titleController,
        ),
        Date(),
        Time(),
        Alarm(),
        CreateTaskButton(
          onTap: _onSaveData,
        ),
      ],
    );
  }

  void _onSaveData() {
    ModelTask _newTask = ModelTask(
      title: titleController.text,
      date: DateTime.now().millisecondsSinceEpoch,
      alarm: 10,
      time: DateTime.now().microsecondsSinceEpoch,
    );
    print(titleController.text);
    DatabaseHelper().insertTask(_newTask);
    //Navigator.of(context).pop(true);
    //Navigator.pop(context,true);
    Navigator.push( context, MaterialPageRoute( builder: (context) => HomeScreen()), ).then((value) => setState(() {}));
  }
}


