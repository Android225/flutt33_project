import 'package:flutter/material.dart';
import 'UI/screens/tasks_screen.dart';
import 'UI/screens/progress_screen.dart';
import 'UI/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Задачи и Цели',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Настройка экранов навигации
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/tasks': (context) => const TasksScreen(),
        '/progress': (context) => const ProgressScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade700, // Цвет области AppBar
        title: const Text('Задачи и Цели'),
      ),
      body: Column(
        children: <Widget>[
          // Верхняя часть для списка задач
          Expanded(
            flex: 4, // Это 4/5 экрана
            child: Container(
              color: Colors.lightBlue.shade100, // Fон
              child: const Center(
                child: Text(
                  'Задачи будут тут',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          // Нижняя часть для кнопок
          Expanded(
            flex: 1, // Это 1/5 экрана
            child: Container(
              color: Colors.lightBlue.shade700, // фон
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white, // Цвет кнопки
                    ),
                    child: const Text('Профиль'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/tasks');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('Задачи'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/progress');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('Прогресс'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
