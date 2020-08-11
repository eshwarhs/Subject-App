import 'package:flutter/material.dart';

class SubjectMainScreen extends StatefulWidget {
  final String subject;
  SubjectMainScreen(this.subject);
  @override
  _SubjectMainScreenState createState() => _SubjectMainScreenState();
}

class _SubjectMainScreenState extends State<SubjectMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subject),
      ),
      //body: GridView.builder(gridDelegate: null, itemBuilder: null),
    );
  }
}
