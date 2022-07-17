import 'package:flutter/material.dart';
import 'package:my_flutter_application/models/model_task.dart';
import 'title.dart';
import 'task.dart';
import 'package:my_flutter_application/repository/task_repository.dart';
import 'dart:convert';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //return taskWidget();
    //ListView.Builder


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

    return ListView(
        children: <Widget>[
          HomeTitle(),
          //llamado del future --> future builder --> se construye a partir de llamado asincronos
          //Future builder --> listView builder --> tasks
          //cuando pinte task.title y task.time
          Task("Wake Up!", "06:00 AM"),
          //Task(TaskRepository().(), '11:00 AM')
          //Task(TaskRep, time)
          /*Task("Daily workout", "06:30 AM"),
          Task("Briefing with Lokanaka", "07:30 AM"),
          Task("Pitching with John", "09:00 AM"),
          Task("Deisgn Landing Page", "11:00 AM"),
          Task("Design Loka Dashboard", "03:00 PM")*/
        ]
    );
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

          return Task(specificTask.title, specificTask.time);

        }
    );
  }
}

