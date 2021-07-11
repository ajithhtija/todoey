import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
class TasksList extends StatefulWidget{
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<TaskData>(
      builder: (context,taskData, child) {
        return ListView.builder(
          itemBuilder: (context,index){
            final task = taskData.gettask()[index];
            return  TaskTile(
              texttitle: task.name,
              ischecked: task.isdone,
              checkcallback: (newstate){
                taskData.updateTask(task);
              },
              longcallback: (){
                 taskData.deletetask(task);
              },
            );
          },
          itemCount: taskData.listlength(),
        );
      },
    );
  }
}
