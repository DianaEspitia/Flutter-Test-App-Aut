import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_flutter_application/widgets/createTask/date.dart';
import 'package:my_flutter_application/widgets/createTask/time_picker.dart';
import 'package:my_flutter_application/widgets/createTask/task_title.dart';
import 'package:my_flutter_application/models/model_task.dart';
import 'package:my_flutter_application/database/database_helper.dart';
import 'package:my_flutter_application/screens/home.dart';
import 'package:my_flutter_application/widgets/createTask/create_task_btn.dart';
import 'package:my_flutter_application/widgets/createTask/date_picker.dart';
import 'package:my_flutter_application/widgets/createTask/alarm.dart';
import 'package:my_flutter_application/widgets/createTask/alarm_dropdown.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:my_flutter_application/widgets/home/home_body.dart';

import '../home/task.dart';

class CornerCard extends StatefulWidget {

  final String buttonTitle;
  final ModelTask? task; //objeto puede llegar nulo

  //Constructor por nombre
  const CornerCard({Key? key,
    required this.buttonTitle,
    this.task,
  }) : super(key: key);

  @override
  State<CornerCard> createState() => _CornerCardState();
}

class _CornerCardState extends State<CornerCard> {
  final TextEditingController titleController = TextEditingController();
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();
  int alarmValue = 5;
  bool flag = false; //false si es tarea para crear

  int currentId = 0;

  @override
  void initState() {
    // TODO: implement initState
    //pasar estado inicial al widget

    final currentTask = widget.task;


    if (currentTask != null){
      currentId = currentTask.id!;

      titleController.text = currentTask.title;

      DateTime dateFlag = DateTime.parse(currentTask.date);
      selectedDate = dateFlag;

      String timeFlag = currentTask.time;
      final format = DateFormat.jm();
      selectedTime = TimeOfDay.fromDateTime(format.parse(timeFlag));

      alarmValue = currentTask.alarm;

      flag = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.task?.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TaskTitle(controller: titleController),
            DatePicker(selectedDate: selectedDate, setDate: (currentDate) => _setDatePicker(currentDate)),
            TimePickerWidget(selectedTime: selectedTime, setTime: (timeOfDay) => _setTimePicker(timeOfDay)),
            AlarmDropdown(setAlarm: (int) => _setAlarm(int), alarmValue: alarmValue),
            CreateTaskButton(onTap: _onSaveData, buttonTitle: widget.buttonTitle),
          ],
        ),
      ),
    );
  }

  _setTimePicker(TimeOfDay? timeOfDay) async {
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }

  _setDatePicker(DateTime? currentDate) async {
    if (currentDate != null && currentDate != selectedDate) {
      setState(() {
        selectedDate = currentDate;
      });
    }
  }

  _setAlarm(int? value) async {
    setState(() {
      alarmValue = value!;
    });
  }

    void _onSaveData() async{
      int alarmId = 1;
      //await AndroidAlarmManager.initialize();
      AndroidAlarmManager.periodic(Duration(seconds: 5), alarmId, fireAlarm);

      ModelTask _newTask = ModelTask(
        title: titleController.text,
        date: '${selectedDate}',//'${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
        alarm: alarmValue,
        time: selectedTime.format(context).toString(),
      );

      if(!flag) {
        DatabaseHelper().insertTask(_newTask);
      }
      else{
        DatabaseHelper().updateItem(currentId, titleController.text, selectedTime.format(context).toString(), '${selectedDate}', alarmValue);
      }
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()),).then((
          value) => setState(() {}));

      //insert(task);
    }

    void fireAlarm(){
      //Acá revisar lo de las notificaciones push/local
      final DateTime now = DateTime.now();
      final int isolateId = Isolate.current.hashCode;
      print("[$now] Hello, world! isolate=${isolateId} function='$fireAlarm'");
  }
  }


