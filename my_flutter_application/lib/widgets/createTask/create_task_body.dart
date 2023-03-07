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
  late final TextEditingController dateController = TextEditingController();
  late final TextEditingController timeController;
  late final TextEditingController alarmController = TextEditingController();

  @override
  void initState() {
    titleController = TextEditingController();
    timeController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTitle(
          text: 'Task title', 
          controller: titleController,
        ),
        Date(
          controller: dateController,
        ),
        Time(controller: timeController),
        Alarm(),
        CreateTaskButton(
          onTap: _onSaveData, buttonTitle: "Create task"
        ),
      ],
    );
  }

  //Funciones de time y date aquí

  void _onSaveData() {
    /*ModelTask _newTask = ModelTask(
      title: titleController.text,
      date: dateController,
      alarm: 10,
      time: timeController.text,
    );
    DatabaseHelper().insertTask(_newTask);
    Navigator.push( context, MaterialPageRoute( builder: (context) => HomeScreen()), ).then((value) => setState(() {}));
  }*/
  }
}


