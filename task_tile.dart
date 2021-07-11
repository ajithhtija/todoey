import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String texttitle;
  final bool ischecked;
  final Function checkcallback;
  final Function longcallback;
  TaskTile({this.texttitle,this.ischecked,this.checkcallback,this.longcallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
          title: Text(
           texttitle,
           style: TextStyle(
            decoration: ischecked? TextDecoration.lineThrough:null,
            ),
            ),
      trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
             value: ischecked,
             onChanged: checkcallback,
            ),
       onLongPress: longcallback,
    );
  }
}