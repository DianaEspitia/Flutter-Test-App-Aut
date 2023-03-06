import 'package:flutter/material.dart';
import 'package:my_flutter_application/models/model_task.dart';
import 'package:my_flutter_application/widgets/home/created_task.dart';
import 'title.dart';
import 'task.dart';
import 'package:my_flutter_application/repository/task_repository.dart';
import 'dart:convert';
import 'package:my_flutter_application/screens/createTask.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';


class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //return taskWidget();
    //ListView.Builder

    //AndroidAlarmManager.periodic(Duration(seconds: 5), 1, fireAlarm);




    return FutureBuilder(
        future: _getMyTasks(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {

          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }else{
            //print(snapshot.data.length);

            //return _TasksList(snapshot.data);

            return Column(
                children: [
                  HomeTitle(),
                  Expanded(child: _TasksList(snapshot.data))
                ]
            );

              _TasksList(snapshot.data);
          }
        });
  }

}

Future <List<ModelTask>> _getMyTasks() async{
  return TaskRepository().getTask();
}




class _TasksList extends StatelessWidget {

  final List<ModelTask> task;
  _TasksList(this.task);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: task.length,
        itemBuilder: (BuildContext context, int i){

          final specificTask = task[i];

          //return Task(specificTask.title, specificTask.time);
          return CreatedTask(specificTask.title, specificTask.time, specificTask);


        }
    );
  }
}

