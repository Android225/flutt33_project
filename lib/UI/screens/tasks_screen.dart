import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  final List<String> tasks; // Список задач
  final Function(String) addTask; // Функция для добавления задачи

  const TasksScreen({super.key, required this.tasks, required this.addTask});

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final TextEditingController _controller = TextEditingController(); // Контроллер для ввода текста

  void _submitTask() {
    if (_controller.text.isNotEmpty) {
      widget.addTask(_controller.text); // Добавляем задачу
      _controller.clear(); // Очищаем текстовое поле
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Создание задач'),
      ),
      body: Column(
        children: [
          Expanded(
            // Используем Expanded, чтобы сделать список гибким
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        labelText: 'Введите задачу',
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (_) => _submitTask(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _submitTask,
                    child: const Text('Добавить задачу'),
                  ),
                  const SizedBox(height: 16.0),
                  // Отображаем задачи
                  Column(
                    children: List.generate(widget.tasks.length, (index) {
                      return ListTile(
                        title: Text(widget.tasks[index]),
                        subtitle: Text('Описание ${widget.tasks[index]}'), // Пример описания
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            // Логика для удаления задачи
                          },
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          // Кнопки переходов фиксированы внизу
          Container(
            color: Colors.lightBlue.shade700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Вернуться на предыдущий экран
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: const Text('Назад'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
