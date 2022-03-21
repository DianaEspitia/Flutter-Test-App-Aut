import 'package:flutter/material.dart';
import 'create_task_btn.dart';

class MyCreateTaskBody extends StatelessWidget {
  const MyCreateTaskBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createTaskBody,
    );
  }
}

Widget Title = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Icon(
        Icons.arrow_left_sharp
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create',
              style: TextStyle(
              color: Colors.black,
              fontSize: 20,),
            ),
            Text('Task',
              style: TextStyle(
              color: Colors.black,
              fontSize: 20,),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget taskTitlle = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Text('Task title',
              style: TextStyle(
              color: Colors.black,
              fontSize: 15,),
            ),
    ],
  ),
);

Widget typeHereFiled = Container(
  child: TextField(
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      icon: const Icon(
        Icons.attach_email,
        color: Colors.purple,
      ),
      labelText: 'Type here',
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      )
    ),

  ),
);

Widget dateTitle = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Text('Date',
              style: TextStyle(
              color: Colors.black,
              fontSize: 15,),
            ),
    ],
  ),
);

Widget dateField = Container(
  child: TextField(
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      icon: const Icon(
        Icons.calendar_month,
        color: Colors.purple,
      ),
      labelText: '05 June 2021',
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      )
    ),

  ),
);

Widget timeTitle = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Text('Time',
              style: TextStyle(
              color: Colors.black,
              fontSize: 15,),
            ),
    ],
  ),
);

Widget timeField = Container(
  child: TextField(
    keyboardType: TextInputType.multiline,
    decoration: InputDecoration(
      icon: const Icon(
        Icons.timeline,
        color: Colors.purple,
      ),
      labelText: '12:00 AM',
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      )
    ),

  ),
);

Widget alarmTitlle = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Text('Alarm',
              style: TextStyle(
              color: Colors.black,
              fontSize: 15,),
            ),
    ],
  ),
);

Widget alarmField = Container(
  child: TextField(
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      icon: const Icon(
        Icons.timer,
        color: Colors.purple,
      ),
      labelText: '30 minutes before',
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      )
    ),

  ),
);

Widget createTaskBody = Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Title,
      taskTitlle,
      typeHereFiled,
      dateTitle, 
      dateField,
      timeTitle,
      timeField,
      alarmTitlle,
      alarmField,
      CreateTaskButton(),
    ]
    ),
);