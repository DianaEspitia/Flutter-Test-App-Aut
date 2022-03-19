import 'package:flutter/material.dart';
import 'package:my_flutter_application/screens/home.dart';
import 'package:my_flutter_application/screens/createTask.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: CreateTaskScreen(),
    );
  }
}





