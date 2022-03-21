import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/my_app_bar.dart';
import 'package:my_flutter_application/widgets/home/home_body.dart';
import 'package:my_flutter_application/widgets/home/add_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ 
    Key? key,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: HomeBody(),
      floatingActionButton: AddButton(),
    );
  }
}
