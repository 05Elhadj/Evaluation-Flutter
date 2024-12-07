import 'package:flutter/material.dart';
import 'task_list.dart';
import 'task_form.dart';
import 'task_details.dart';

void main() {
  runApp(TaskManagementApp());
}

class TaskManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion des Tâches',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TaskList(),
        '/task-form': (context) => TaskForm(),
        '/task-details': (context) => TaskDetails(),
      },
    );
  }
}
