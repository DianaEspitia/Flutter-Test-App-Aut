import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/home/my_app_bar.dart';
import 'package:my_flutter_application/widgets/home/home_body.dart';
import 'package:my_flutter_application/widgets/home/add_button.dart';

import 'package:my_flutter_application/repository/task_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    TaskRepository().getTask().toString();
    return Scaffold(
      appBar: MyAppBar(),
      body: HomeBody(),
      floatingActionButton: AddButton(),
    );
  }
}


//refresh the page here
