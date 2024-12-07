import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> task =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de la Tâche'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Titre',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 4),
            Text(task['title']!, style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 16),

            Text(
              'Description',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 4),
            Text(task['description']!,
                style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 16),

            Text(
              'Date de Début',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 4),
            Text(task['startDate']!,
                style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 16),

            Text(
              'Date de Fin',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 4),
            Text(task['endDate']!,
                style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
