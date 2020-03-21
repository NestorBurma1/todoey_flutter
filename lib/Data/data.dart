import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'dart:collection';
class Data extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'By milk'),
    Task(name: 'By eggs'),
    Task(name: 'By bread')
  ];

  void addTask(String newTask){
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

//  void toggleDone(int index){
//    _tasks[index].isDone = !_tasks[index].isDone;
//    notifyListeners();
//  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  int get taskCount{
    return _tasks.length;
  }
 UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
 }
}