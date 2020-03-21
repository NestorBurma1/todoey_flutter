import 'package:flutter/material.dart';

class TileTask extends StatelessWidget {

  TileTask({this.isChecked, this.taskTile, this.checkBoxCallback, this.onLongPressCallback});
  final bool isChecked;
  final String taskTile;
  final Function checkBoxCallback;
  final Function onLongPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:  onLongPressCallback,
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

