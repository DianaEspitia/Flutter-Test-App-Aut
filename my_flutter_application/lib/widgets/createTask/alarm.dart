import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {

  //final TextEditingController controller;

  const Alarm({
    Key? key,
    //required this.controller,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title(), selectAlarm()],
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




class selectAlarm extends StatefulWidget {

  const selectAlarm({Key? key,}) : super(key: key);

  @override
  State<selectAlarm> createState() => _selectAlarmState();
}

class _selectAlarmState extends State<selectAlarm> {

  // Initial Selected Value
  int dropdownvalue = 5;

  // List of items in our dropdown menu
  List<DropdownMenuItem<int>> get dropdownItems{
    List<DropdownMenuItem<int>> menuItems = [
      DropdownMenuItem(child: Text("5 minutes before"),value: 5),
      DropdownMenuItem(child: Text("10 minutes before"),value: 10),
      DropdownMenuItem(child: Text("15 minutes before"),value: 15),
      DropdownMenuItem(child: Text("20 minutes before"),value: 20),
      DropdownMenuItem(child: Text("25 minutes before"),value: 25),
      DropdownMenuItem(child: Text("30 minutes before"),value: 30),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Row(
            children: [
            Icon(Icons.alarm, color: Colors.purple),
            DropdownButton(
              value: dropdownvalue,
              items: dropdownItems,
              onChanged: (int? value) {
                setState(() {
                  dropdownvalue = value!;
                });
              },

            )],
        ));
    }
}




class _inputAlarm extends StatefulWidget {
  final TextEditingController controller;

  const _inputAlarm({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<_inputAlarm> createState() => _inputAlarmState();
}

class _inputAlarmState extends State<_inputAlarm> {

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
            hintText: '5 minutes before',
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
          onTap: () async {
            selectAlarm();
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
