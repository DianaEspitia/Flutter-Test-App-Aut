import 'package:flutter/material.dart';
import 'package:my_flutter_application/screens/createTask.dart';

class AddButton extends StatefulWidget {

  @override
  State<AddButton> createState(){
    return _AddButtonState();
  }
}

class _AddButtonState extends State<AddButton> {

  void onPressedAdd() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CreateTaskScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    /*return FloatingActionButton(
      onPressed: onPressedAdd,
      backgroundColor: Colors.purple,
      child: Icon(
        Icons.add,
        size: 30.0,
      ),
    );*/

    return FloatingActionButton(
      child: Container(
        child: Icon(
            Icons.add,
          size: 30.0,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [
                  Color(0xFF7E16D8),
                  Color(0xFFD816D1)
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
            )
        ),
      ),
      onPressed: onPressedAdd,
    );
  }
}
