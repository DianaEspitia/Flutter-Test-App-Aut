import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title1(),
            title2()
          ],
        ),
        subtitle()
      ],
    );
  }
}


class title1 extends StatelessWidget {
  const title1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      child: Text(
        "Today",
        style: TextStyle(
            fontSize: 22.0,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}


class title2 extends StatelessWidget {
  const title2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 5.0,
          left: 20.0
      ),
      child: Text(
        "Schedule",
        style: TextStyle(
            fontSize: 22.0,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}


class subtitle extends StatelessWidget {
  const subtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 55.0,
          left: 130.0
      ),
      child: Text(
        "2/10 Task today",
        style: TextStyle(
            fontSize: 15.0,
            color: Colors.purple,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}



