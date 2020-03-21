import 'package:flutter/material.dart';

class TileTask extends StatelessWidget {

  TileTask({this.isChecked, this.taskTile, this.checkBoxCallback});
  final bool isChecked;
  final String taskTile;
  final Function checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
         onChanged: checkBoxCallback,
      ),
    );
  }
}

