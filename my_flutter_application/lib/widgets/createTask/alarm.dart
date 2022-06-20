import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title(), input()],
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
          hintText: '30 minutes before',
          //helperText: 'Keep it short, this is just a demo.',
          //labelText: 'Life story',
          prefixIcon: const Icon(
            Icons.alarm,
            color: Colors.purple,
          ),
          prefixText: ' ',
          suffixIcon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
