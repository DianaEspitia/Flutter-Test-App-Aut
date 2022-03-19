import 'package:flutter/material.dart';


class MyHomeBody extends StatelessWidget {
  const MyHomeBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appBody,
    );
  }
}

Widget Title = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today',
              style: TextStyle(
              color: Colors.black),
            ),
            Text('Schedule',
              style: TextStyle(
              color: Colors.black,),
            ),
          ],
        ),
      ),
      Text(
        '2/10 Task today',
        style: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);

Widget wakeUp = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Wake Up!',
              style: TextStyle(
              color: Colors.black),
            ),
            Text('06:00 am',
              style: TextStyle(
              color: Colors.black,),
            ),
          ],
        ),
      ),
      Expanded(
        child: Icon(
          Icons.arrow_right
        ),
      )
    ]
  )
);

Widget dailyWorkout = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Daily workout',
              style: TextStyle(
              color: Colors.black),
            ),
            Text('06:30 am',
              style: TextStyle(
              color: Colors.black,),
            ),
          ],
        ),
      ),
      Expanded(
        child: Icon(
          Icons.arrow_right
        ),
      )
    ]
  )
);

Widget briefing = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Briefing with Lokanaka',
              style: TextStyle(
              color: Colors.black),
            ),
            Text('07:30 am',
              style: TextStyle(
              color: Colors.black,),
            ),
          ],
        ),
      ),
      Expanded(
        child: Icon(
          Icons.arrow_right
        ),
      )
    ]
  )
);

Widget pitching = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pitching with John',
              style: TextStyle(
              color: Colors.black),
            ),
            Text('09:00 am',
              style: TextStyle(
              color: Colors.black,),
            ),
          ],
        ),
      ),
      Expanded(
        child: Icon(
          Icons.arrow_right
        ),
      )
    ]
  )
);

Widget designLandingPage = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Deisgn Landing Page',
              style: TextStyle(
              color: Colors.black),
            ),
            Text('11:00 am',
              style: TextStyle(
              color: Colors.black,),
            ),
          ],
        ),
      ),
      Expanded(
        child: Icon(
          Icons.arrow_right
        ),
      )
    ]
  )
);

Widget designLokaDashboard = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Design Loka Dashboard',
              style: TextStyle(
              color: Colors.black),
            ),
            Text('03:00 pm',
              style: TextStyle(
              color: Colors.black,),
            ),
          ],
        ),
      ),
      Expanded(
        child: Icon(
          Icons.arrow_right
        ),
      )
    ]
  )
);



Widget appBody = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Title,
      wakeUp,
      dailyWorkout,
      briefing,
      pitching,
      designLandingPage,
      designLokaDashboard,
    ]
    ),
);

