import 'package:flutter/material.dart';
import 'package:todoeyflutter/Data/data.dart';
import 'package:todoeyflutter/widgets/tiletask.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myData = Provider.of<Data>(context);
    return Consumer<Data>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TileTask(
                taskTile: tasksData.tasks[index].name,
                isChecked: tasksData.tasks[index].isDone,
                checkBoxCallback: (bool checkBoxState) {
//             setState(() {
                  myData.toggleDone(index);
//            });
                });
          },
          itemCount: tasksData.taskCount,
        );
      },
    );
  }
}
