import 'package:flutter/material.dart';
import './subject_main_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> subject = ["A", "B", "C", "D"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Class Info'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return Card(
            child: ListTile(
              title: Text(subject[i]),
              subtitle: Text('My new post'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubjectMainScreen(subject[i]),
                  ),
                );
              },
              trailing:
                  IconButton(icon: Icon(Icons.arrow_forward), onPressed: null),
            ),
          );
        },
        itemCount: subject.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
