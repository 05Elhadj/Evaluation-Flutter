import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final List<Map<String, String>> tasks = [
    {
      'title': 'Acheter des courses',
      'description': 'Acheter du lait, du pain et des œufs.',
      'startDate': '2024-12-01',
      'endDate': '2024-12-02',
    },
    {
      'title': "Aller à l'ecole",
      'description': 'Étudier des modules web designer.',
      'startDate': '2024-12-03',
      'endDate': '2024-12-04',
    },
    {
      'title': 'Faire du sport',
      'description': 'Courir 5 km au parc.',
      'startDate': '2024-12-05',
      'endDate': '2024-12-05',
    },
    {
      'title': 'Jouer au football',
      'description': 'Marquer un but.',
      'startDate': '2024-12-06',
      'endDate': '2024-12-07',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Tâches'),
      ),
      body: tasks.isEmpty
          ? Center(
              child: Text(
                'Aucune tâche disponible.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8.0),
                  elevation: 4,
                  child: ListTile(
                    title: Text(
                      tasks[index]['title']!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(tasks[index]['description']!),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/task-details',
                        arguments: tasks[index],
                      );
                    },
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/task-form');
          if (result != null) {
            setState(() {
              tasks.add(result as Map<String, String>);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
