import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/createTask/alarm.dart';

class CTAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const appHeight = kToolbarHeight * 1.0;

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(appHeight);

  const CTAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final back = IconButton(
      onPressed: () {
        Navigator.pop(context); //Retorna a la página anterior
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
        size: 15.0,
      ),
    );

    return AppBar(
        leading: back,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [text1(title: title,), text2()],
            )
          ],
        ));
  }
}

class text1 extends StatelessWidget {

  final String title;
  const text1({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0),
      ),
    );
  }
}

class text2 extends StatelessWidget {
  const text2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.0, left: 5.0),
      child: Text(
        'Task',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0),
      ),
    );
  }
}
