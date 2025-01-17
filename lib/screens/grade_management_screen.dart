import 'package:flutter/material.dart';

class GradeManagementScreen extends StatefulWidget {
  const GradeManagementScreen({super.key});

  @override
  _GradeManagementScreenState createState() => _GradeManagementScreenState();
}

class _GradeManagementScreenState extends State<GradeManagementScreen> {
  Map<int, List<Map<String, dynamic>>> studentGrades = {};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Grades'),
      ),
      body: Center(
        child: Text('Grade Management Page (Implement Similar to Students)'),
      ),
    );
  }
}
