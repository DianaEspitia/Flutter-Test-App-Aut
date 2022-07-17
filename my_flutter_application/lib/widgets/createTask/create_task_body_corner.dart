import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/createTask/time_picker.dart';
import 'package:my_flutter_application/widgets/createTask/task_title.dart';
import 'package:my_flutter_application/models/model_task.dart';
import 'package:my_flutter_application/database/database_helper.dart';
import 'package:my_flutter_application/screens/home.dart';
import 'package:my_flutter_application/widgets/createTask/create_task_btn.dart';
import 'package:my_flutter_application/widgets/createTask/date_picker.dart';
import 'package:my_flutter_application/widgets/createTask/alarm.dart';

class CornerCard extends StatefulWidget {
  const CornerCard({Key? key}) : super(key: key);

  @override
  State<CornerCard> createState() => _CornerCardState();
}

class _CornerCardState extends State<CornerCard> {
  final TextEditingController titleController = TextEditingController();
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();
  final TextEditingController alarmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Container(
              child: Stack(
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TaskTitle(controller: titleController),
                      DatePicker(selectedDate: selectedDate, setDate: (currentDate) => _setDatePicker(currentDate)),
                      TimePickerWidget(selectedTime: selectedTime, setTime: (timeOfDay) => _setTimePicker(timeOfDay)),
                      Alarm(),
                      CreateTaskButton(onTap: _onSaveData,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
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

    void _onSaveData() {
      ModelTask _newTask = ModelTask(
        title: titleController.text,
        date: '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
        alarm: 10,
        time: selectedTime.format(context).toString(),
      );
      DatabaseHelper().insertTask(_newTask);
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()),).then((
          value) => setState(() {}));

      //insert(task);
    }
  }


