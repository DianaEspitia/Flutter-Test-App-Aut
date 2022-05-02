import 'package:flutter/material.dart';

class AppBarCommons extends StatelessWidget implements PreferredSizeWidget {
  static const appHeight = kToolbarHeight * 1.0;

  String text1 = "";

  @override
  Size get preferredSize => const Size.fromHeight(appHeight);

  AppBarCommons({Key? key, required this.text1}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final text1 = Container(
      margin: EdgeInsets.only(
          top: 2.0,
          left: 5.0
      ),
      child: Text('Thursday',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purple),
      ),
    );


    final text2 = Container(
      margin: EdgeInsets.only(
          top: 1.0,
          left: 5.0
      ),
      child: Text('03 June 2021',
        style: TextStyle(
            color: Colors.black,
            fontSize: 12),
      ),
    );


    final photo = Container(
      margin: EdgeInsets.only(
          top: 2.0,
          right: 20.0
      ),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/img/captain.jpeg")
          )
      ),
    );


    return AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        leadingWidth: 0,
        bottom: null,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text1,
                text2
              ],
            ),
            photo
          ],
        )
    );
  }
}