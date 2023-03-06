import 'package:flutter/material.dart';
import 'package:my_flutter_application/database/database_helper.dart';
import 'package:my_flutter_application/models/model_task.dart';
import 'package:my_flutter_application/widgets/home/task.dart';

class TaskTitle extends StatelessWidget {
  final TextEditingController controller;

  const TaskTitle({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const title(),
        input(
          controller: controller,
        ),
      ],
    ));
  }
}

class title extends StatelessWidget {
  const title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0, left: 20.0),
      child: const Text(
        'Task title',
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
  final TextEditingController controller;

  const input({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF3F2F4)),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF3F2F4)),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF3F2F4)),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          fillColor: Color(0xFFF3F2F4),
          filled: true,
          hintText: 'Type Here',
          //helperText: 'Keep it short, this is just a demo.',
          //labelText: 'Life story',
          prefixIcon: Icon(
            Icons.description,
            color: Colors.purple,
          ),
          prefixText: ' ',
        ),
      ),
    );
  }
}
