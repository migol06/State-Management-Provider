import 'package:flutter/cupertino.dart';

import 'task.dart';

class TaskDataModel extends ChangeNotifier {
  List<Task> task = [
    Task(desc: 'Buy Eggs'),
    Task(desc: 'Buy Drinks'),
    Task(desc: 'Buy Fruits'),
  ];
  void addTask(String data) {
    task.add(Task(desc: data));
  }
}
