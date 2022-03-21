import 'package:flutter/material.dart';

class Date extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final title = Container(
      margin: EdgeInsets.only(
          top: 40.0,
          left: 20.0
      ),
      child: Text(
        'Date',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,),
      ),
    );

    final input = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      child: TextField(
        style: TextStyle(color: Colors.black),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          focusedBorder:  OutlineInputBorder(
              borderSide:  BorderSide(color: Color(0xFFF3F2F4)),
              borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
          fillColor: Color(0xFFF3F2F4), filled: true,
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


    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            title,
            input
          ],
        )

    );


  }
}
