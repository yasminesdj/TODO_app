import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CategoryItem(
          title: 'Business',
          taskCount: 40,
          color: Colors.pink,
        ),
        CategoryItem(
          title: 'Personal',
          taskCount: 18,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final int taskCount;
  final Color color;

  CategoryItem(
      {required this.title, required this.taskCount, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF2C2C3E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$taskCount tasks',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
