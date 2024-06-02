import 'package:flutter/material.dart';
import 'task_item.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        TaskItem(task: 'Daily meeting with team'),
        TaskItem(task: 'Pay for rent'),
        TaskItem(task: 'Check emails'),
        TaskItem(task: 'Lunch with Emma'),
        TaskItem(task: 'Meditation'),
      ],
    );
  }
}
