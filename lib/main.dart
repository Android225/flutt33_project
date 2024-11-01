import 'package:flutter/material.dart';
import 'UI/screens/tasks_screen.dart';
import 'UI/screens/progress_screen.dart';
import 'UI/screens/profile_screen.dart';
import 'UI/screens/column_screen.dart';
import 'UI/screens/listview_screen.dart';
import 'UI/screens/listview_separated_screen.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/progress': (context) => const ProgressScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/column': (context) => const ColumnScreen(),
        '/listview': (context) => const ListViewScreen(),
        '/listview_separated': (context) => const ListViewSeparatedScreen(),
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
        title: const Text('Главный экран'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/column');
            },
            child: const Text('Список на Column'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/listview');
            },
            child: const Text('Список на ListView'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/listview_separated');
            },
            child: const Text('Список на ListView.separated'),
          ),
        ],
      ),
    );
  }
}
