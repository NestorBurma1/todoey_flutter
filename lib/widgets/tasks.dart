import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/tiletask.dart';
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TileTask(text: 'Go away'),
      TileTask(text: 'Do the first tile'),
      TileTask(text: 'You made allot of tasks just make a rest'),
    ]);
  }
}

