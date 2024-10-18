import 'package:flutter/material.dart';
import '../widgets/task_card.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Задачи'),
      ),
      body: ListView(
        children: [
          TaskCard(
            title: 'Задача 1',
            description: 'Описание задачи 1.',
            onMarkComplete: () {
              print('Задача 1 завершена!');
            },
          ),
          TaskCard(
            title: 'Задача 2',
            description: 'Описание задачи 2.',
            onMarkComplete: () {
              print('Задача 2 завершена!');
            },
          ),
          TaskCard(
            title: 'Задача 3',
            description: 'Описание задачи 3.',
            onMarkComplete: () {
              print('Задача 3 завершена!');
            },
          ),
        ],
      ),
    );
  }
}
