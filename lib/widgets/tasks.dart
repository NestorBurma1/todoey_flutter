import 'package:flutter/material.dart';
import 'package:todoeyflutter/Data/data.dart';
import 'package:todoeyflutter/widgets/tiletask.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = tasksData.tasks[index];
            return Dismissible(
              background: Container(
                alignment: Alignment.centerRight,
                color: Colors.red,
                child: Icon(
                  Icons.cancel,
                ),
              ),
              key: Key(tasksData.tasks[index].name),
              onDismissed: (ind) {
                tasksData.deleteTask(index);
              },
              child: TileTask(
                  taskTile: task.name,
                  isChecked: task.isDone,
                  checkBoxCallback: (checkState) {
//             setState(() {
                    tasksData.updateTask(task);
//            });
                  }),
            );
          },
          itemCount: tasksData.taskCount,
        );
      },
    );
  }
}
