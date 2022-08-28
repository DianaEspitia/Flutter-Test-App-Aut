import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/createTask/general_btn_widget.dart';

class AlarmDropdown extends StatelessWidget {
  final Function(int?) setAlarm;
  final int alarmValue;
  const AlarmDropdown({Key? key, required this.setAlarm, required this.alarmValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[title(), selectAlarm(setAlarm: setAlarm, alarmValue: alarmValue,)],
        ));
  }
}


class title extends StatelessWidget {
  const title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0, left: 20.0),
      child: Text(
        'Alarm',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}



class selectAlarm extends StatefulWidget {
  final Function(int?) setAlarm;
  final int alarmValue;
  const selectAlarm({Key? key, required this.setAlarm, required this.alarmValue}) : super(key: key);

  @override
  State<selectAlarm> createState() => _selectAlarmState();
}

class _selectAlarmState extends State<selectAlarm> {

  // Initial Selected Value
  int dropdownvalue = 5;

  // List of items in our dropdown menu
  List<DropdownMenuItem<int>> get dropdownItems {
    List<DropdownMenuItem<int>> menuItems = [
      DropdownMenuItem(child: Text("5 minutes before"), value: 5),
      DropdownMenuItem(child: Text("10 minutes before"), value: 10),
      DropdownMenuItem(child: Text("15 minutes before"), value: 15),
      DropdownMenuItem(child: Text("20 minutes before"), value: 20),
      DropdownMenuItem(child: Text("25 minutes before"), value: 25),
      DropdownMenuItem(child: Text("30 minutes before"), value: 30),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color(0xFFF3F2F4),
            borderRadius: BorderRadius.circular(5.0),
          ),
        child: Row(
          children: [
            Icon(Icons.alarm, color: Colors.purple),
            DropdownButton(
              isDense: false,
              isExpanded: false,

              value: widget.alarmValue,
              items: dropdownItems,
              onChanged: (int? value) {
                widget.setAlarm(value);
              },

            )

          ],
        )));
  }

}