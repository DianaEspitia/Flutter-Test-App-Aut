import 'package:flutter/material.dart';
import 'package:my_flutter_application/screens/createTask.dart';

class AddButton extends StatefulWidget {
  @override
  State<AddButton> createState() {
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
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [Color(0xFF7E16D8), Color(0xFFD816D1)],
                tileMode: TileMode.clamp //buscar
                )),
      ),
      onPressed: onPressedAdd,
    );
  }
}
