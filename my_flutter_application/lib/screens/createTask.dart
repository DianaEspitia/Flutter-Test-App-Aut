import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/createTask/create_task_body.dart';
import 'package:my_flutter_application/widgets/createTask/create_task_app_bar.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({ 
    Key? key,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CTAppBar(),
      body: CreateTaskBody(),
    );
  }
}
