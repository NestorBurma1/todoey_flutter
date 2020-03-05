import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        padding:
            EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 30.0,
              child: Icon(
                Icons.list,
                size: 30.0,
                color: Colors.blueAccent,
              ),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Todoey',
              style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
