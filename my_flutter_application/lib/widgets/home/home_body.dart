import 'package:flutter/material.dart';
import 'title.dart';
import 'task.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget> [
          HomeTitle(),
          Task("Wake Up!", "06:00 AM"),
          /*Task("Daily workout", "06:30 AM"),
          Task("Briefing with Lokanaka", "07:30 AM"),
          Task("Pitching with John", "09:00 AM"),
          Task("Deisgn Landing Page", "11:00 AM"),
          Task("Design Loka Dashboard", "03:00 PM")*/
        ]
    );
  }
}
