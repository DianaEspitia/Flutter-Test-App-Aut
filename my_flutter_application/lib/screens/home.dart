import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/my_app_bar.dart';
import 'package:my_flutter_application/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ 
    Key? key,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: MyHomeBody(),
    );
  }
}
