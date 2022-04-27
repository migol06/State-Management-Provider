import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'task.dart';

class TaskDataModel extends ChangeNotifier {
  final List<Task> _task = [
    Task(desc: 'Buy Eggs'),
    Task(desc: 'Buy Drinks'),
    Task(desc: 'Buy Fruits'),
  ];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  void addTask(String data) {
    _task.add(Task(desc: data));
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  int get taskLength {
    return _task.length;
  }
}
