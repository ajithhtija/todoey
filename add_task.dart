import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/screens/task_data.dart';
import 'task.dart';
class AddTaskFile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String temp;
    return Container(
      color: Color(0xff999191),
      child: Container(
        padding: EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
              onChanged: (value){
                 temp = value;
              },
            ),
             SizedBox(
               height: 30,
             ),
             FlatButton(
                onPressed:(){
                   if(temp==null)
                     temp = '.';
                   Provider.of<TaskData>(context,listen: false).gettask().add(Task(name: temp));
                   Provider.of<TaskData>(context,listen: false).addtask();
                   Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                height: 60,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
             ),
          ],
        ),
      ),
    );
  }
}