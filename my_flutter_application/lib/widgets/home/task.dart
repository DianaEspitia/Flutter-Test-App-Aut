

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Task extends StatelessWidget {

  String task = "";
  String time = "";

  Task(this.task, this.time);

  @override
  Widget build(BuildContext context) {
  
    
    final taskName = Text(
      task,
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    );

    final taskTime = Text(
      time,
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
      ),
    );

    final arrow = Icon(
      Icons.arrow_forward_ios
    );


    return InkWell(
      onTap: _onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 40.0
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: task, fontWeight: FontWeight.bold),
                CustomText(text: time)
              ],
            ),
            arrow
          ],
        ),
      ),
    );
  }

  void _onTap(){print("hola");}

}

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text, this.fontWeight = FontWeight.normal}) : super(key: key);

  final String text;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: fontWeight,
      ),
    );
  }
}

