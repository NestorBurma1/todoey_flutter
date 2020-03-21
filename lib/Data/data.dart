import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
class Data extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'By milk'),
    Task(name: 'By eggs'),
    Task(name: 'By bread')
  ];

  void addTask(String newTask){
    tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void toggleDone(int index){
    tasks[index].isDone = !tasks[index].isDone;
    notifyListeners();
  }

  int get taskCount{
    return tasks.length;
  }

}