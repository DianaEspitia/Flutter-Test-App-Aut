import 'package:flutter/material.dart';

class Time extends StatelessWidget {

  final TextEditingController controller;

  const Time({
    Key? key,
    required this.controller,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title(),
        _inputTime(controller: controller),
      ],
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
        'Time',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}


class _inputTime extends StatefulWidget {
  final TextEditingController controller;

  _inputTime({Key? key, required this.controller}) : super(key: key);

  @override
  State<_inputTime> createState() => _inputTimeState();
}

class _inputTimeState extends State<_inputTime> {
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
        hintText: TimeOfDay.now().format(context).toString(),
        prefixIcon: const Icon(
          Icons.access_time,
          color: Colors.purple,
        ),
      ),
      onTap: () async {
        TimeOfDay _time = TimeOfDay.now();
        final selectedTime = await showTimePicker(
          context: context,
          initialTime: _time,
        );
        if (selectedTime != null) {
          setState(() {
            _time = selectedTime;
            //print(_time.format(context));
            widget.controller.text = _time.format(context).toString();
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
          hintText: '12:00 AM',
          //helperText: 'Keep it short, this is just a demo.',
          //labelText: 'Life story',
          prefixIcon: const Icon(
            Icons.access_time,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}


