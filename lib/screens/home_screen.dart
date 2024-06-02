import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import '../widgets/task_list.dart';
import '../widgets/category_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1C1C2D),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's up, Olivia!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CategoryList(),
            SizedBox(height: 20),
            Text(
              "Today's Tasks",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(child: TaskList()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
