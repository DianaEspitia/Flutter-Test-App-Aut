import 'package:flutter/material.dart';

//Este widget es para contar con un botón general que nos permita seleccionar fecha, hora y alarma

class ButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final IconData icon;
  final String titleText;

  const ButtonWidget({Key? key,
    required this.onTap,
    required this.text,
    required this.icon,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            title(titleText),
            InkWell(
              onTap: onTap,
              child: Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(0xFFF3F2F4),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: [
                    Icon(icon, color: Colors.purple),
                    Text(text),
                  ],
                ),
              ),
            ),
          ],
        ));
    /*return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xFFF3F2F4),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.purple),
            Text(text),
          ],
        ),
      ),
    );*/
  }
}


class title extends StatelessWidget {
  final String titleText;

  title(this.titleText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0, left: 20.0),
      child: Text(titleText,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}


class Button extends StatelessWidget {

  final Function()? onTap;
  final String text;
  final IconData icon;

  Button(this.onTap, this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xFFF3F2F4),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.purple),
            Text(text),
          ],
        ),
      ),
    );
  }
}



