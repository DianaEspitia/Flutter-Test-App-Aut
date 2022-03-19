import 'package:flutter/material.dart';
import 'package:my_flutter_application/widgets/create_task_body.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({ 
    Key? key,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCreateTaskBody(),
    );
  }
}
