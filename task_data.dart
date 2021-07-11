import 'package:flutter/foundation.dart';
import 'task.dart';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
];
  int listlength()
  {
    return _tasks.length;
  }
  List<Task> gettask()
  {
    return _tasks;
  }
  void addtask()
  {
    notifyListeners();
  }
  void updateTask(Task task) {
    task.toggle();
    notifyListeners();
  }
  void deletetask(Task task){
     _tasks.remove(task);
     notifyListeners();
  }
}