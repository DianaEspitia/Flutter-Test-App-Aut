import 'package:flutter/material.dart';

class CTAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const appHeight = kToolbarHeight * 1.0;

  @override
  Size get preferredSize => const Size.fromHeight(appHeight);

  const CTAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final back = IconButton(
      onPressed: (){
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
              children: [
                text1(),
                text2()
              ],
            )
          ],
        )
    );
  }
}


class text1 extends StatelessWidget {
  const text1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Create',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.0
        ),
      ),
    );
  }
}


class text2 extends StatelessWidget {
  const text2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}


