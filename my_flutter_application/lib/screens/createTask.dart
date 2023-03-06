import 'package:flutter/material.dart';
import 'package:my_flutter_application/models/model_task.dart';
import 'package:my_flutter_application/widgets/createTask/create_task_body.dart';
import 'package:my_flutter_application/widgets/createTask/create_task_app_bar.dart';
import 'package:my_flutter_application/widgets/createTask/create_task_body_corner.dart';

class CreateTaskScreen extends StatelessWidget {
  final String buttonTitle;
  final String appBarTitle;

  final ModelTask? task;

  const CreateTaskScreen({
    Key? key,
    required this.buttonTitle,
    required this.appBarTitle,
    this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CTAppBar(title: appBarTitle,),
      body: CornerCard(task: task ,buttonTitle: buttonTitle,),
    );
  }
}
