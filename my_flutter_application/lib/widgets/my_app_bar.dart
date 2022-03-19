import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const appHeight = kToolbarHeight * 1.0;

  @override
  Size get preferredSize => const Size.fromHeight(appHeight);

  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Thursday',
              style: TextStyle(
              color: Colors.purple),
              ),
              Text('03 June 2021',
              style: TextStyle(
              color: Colors.black,
              fontSize: 10),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.man),
          ),
        ],
      )
    );
  }
}