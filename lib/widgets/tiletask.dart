import 'package:flutter/material.dart';

class TileTask extends StatefulWidget {
  const TileTask({this.text});

  final String text;

  @override
  _TileTaskState createState() => _TileTaskState();
}

class _TileTaskState extends State<TileTask> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.text,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkBoxState: isChecked,
        toggleCheckBoxState: (bool checkBoxState) {
          setState(() {
            isChecked = checkBoxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkBoxState, this.toggleCheckBoxState});

  final bool checkBoxState;
  final Function toggleCheckBoxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.blueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
