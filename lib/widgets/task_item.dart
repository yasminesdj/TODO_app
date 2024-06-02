import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String task;

  TaskItem({required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFF2C2C3E),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.radio_button_unchecked, color: Colors.pink),
          SizedBox(width: 10),
          Text(
            task,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
