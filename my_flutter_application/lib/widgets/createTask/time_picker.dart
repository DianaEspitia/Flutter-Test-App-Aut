import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/createTask/general_btn_widget.dart';

class TimePickerWidget extends StatelessWidget {
  final TimeOfDay selectedTime;
  final Function(TimeOfDay?) setTime;

  const TimePickerWidget({
    Key? key,
    required this.selectedTime,
    required this.setTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      onTap: () => _selectTime(context),
      icon: Icons.access_time,
      text: '  ${selectedTime.format(context).toString()}',
      titleText: "Time",
    );
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    setTime(timeOfDay);
  }
}
