import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onMarkComplete;
  final VoidCallback onDelete; // Добавляем callback для удаления

  const TaskCard({
    Key? key,
    required this.title,
    required this.description,
    required this.onMarkComplete,
    required this.onDelete, // Инициализируем callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onMarkComplete,
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(title),
          subtitle: Text(description),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: onDelete, // Обрабатываем нажатие для удаления
          ),
        ),
      ),
    );
  }
}
