import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/createTask/general_btn_widget.dart';

class DatePicker extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime?) setDate;

  const DatePicker({
    Key? key,
    required this.selectedDate,
    required this.setDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      onTap: () => _selectDate(context),
      icon: Icons.date_range_sharp,
      text: '  ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
      titleText: "Date",
    );
  }

  _selectDate(BuildContext context) async {
    //DateTime currentDate = DateTime.now();

    final selectDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1990),
      lastDate: DateTime(2025),
      initialDate: selectedDate,
      selectableDayPredicate: (day) => day.isBefore(DateTime(2025)),
    );
    setDate(selectDate);

  }
}
