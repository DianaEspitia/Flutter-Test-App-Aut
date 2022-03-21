import 'package:flutter/material.dart';

class CTAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const appHeight = kToolbarHeight * 1.0;

  @override
  Size get preferredSize => const Size.fromHeight(appHeight);

  const CTAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final back = Container(
      margin: EdgeInsets.only(
        top: 0.0,
        left: 2.0
      ),
      child: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
        size: 15.0,
      ),
    );


    final text1 = Container(
      margin: EdgeInsets.only(
          top: 1.0,
          right: 5.0
      ),
      child: Text('Create',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          fontSize: 20.0
        ),
      ),
    );


    final text2 = Container(
      margin: EdgeInsets.only(
          top: 1.0,
          left: 5.0
      ),
      child: Text('Task',
        style: TextStyle(
          fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.0),
      ),
    );



    return AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            back,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text1,
                text2
              ],
            )
          ],
        )
    );
  }
}
