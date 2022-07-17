import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatelessWidget {

  final TextEditingController controller;

  const Date({
    Key? key,
    required this.controller,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title(), _inputDate(
        controller: controller,
      )],
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
        'Date',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}


class _inputDate extends StatefulWidget {
  final TextEditingController controller;

  const _inputDate({Key? key, required this.controller,}) : super(key: key);

  @override
  State<_inputDate> createState() => _inputDateState();
}

class _inputDateState extends State<_inputDate> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: TextField(
          controller: widget.controller,
          readOnly: true,

          style: TextStyle(color: Colors.black),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF3F2F4)),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF3F2F4)),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF3F2F4)),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            fillColor: Color(0xFFF3F2F4),
            filled: true,
            hintText: DateFormat.yMMMMEEEEd().format(DateTime.now()).toString(),
            prefixIcon: const Icon(
              Icons.date_range_sharp,
              color: Colors.purple,
            ),
          ),
          onTap: () async {

            DateTime currentDate = DateTime.now();

            final selectedDate = await showDatePicker(
              context: context,
              firstDate: DateTime(1990),
              lastDate: DateTime(2025),
              initialDate: currentDate,
              selectableDayPredicate: (day) => day.isBefore(DateTime(2025)),
            );
            if (selectedDate != null) {
              setState(() {
                currentDate = selectedDate;
                widget.controller.text = DateFormat.yMMMMEEEEd().format(currentDate).toString();
                //print(controller.text);
                //controller.text = currentDate.toString();
              });
            }
          },

        )
    );
  }
}


class input extends StatelessWidget {
  const input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: TextField(
        style: TextStyle(color: Colors.black),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFF3F2F4)),
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFF3F2F4)),
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFF3F2F4)),
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          fillColor: Color(0xFFF3F2F4),
          filled: true,
          hintText: '05 June 2021',
          //helperText: 'Keep it short, this is just a demo.',
          //labelText: 'Life story',
          prefixIcon: const Icon(
            Icons.date_range_sharp,
            color: Colors.purple,
          ),
          prefixText: ' ',
        ),
      ),
    );
  }
}
