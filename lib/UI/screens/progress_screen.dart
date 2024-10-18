import 'package:flutter/material.dart';

import '../widgets/goal_card.dart';
import 'goals_screen.dart';
import 'statistics_screen.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade700,
        title: const Text('Прогресс'),
      ),
      body: Column(
        children: <Widget>[
          // Верхняя часть для контента прогресса
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.lightBlue.shade100,
              child: ListView(
                children: [
                  GoalCard(
                    title: 'Цель 1',
                    description: 'Описание цели 1',
                    onPressed: () {
                      // Логика
                      print('Цель 1 выполнена!');
                    },
                  ),
                  GoalCard(
                    title: 'Цель 2',
                    description: 'Описание цели 2',
                    onPressed: () {
                      // Логика при нажатии на кнопку
                      print('Цель 2 выполнена!');
                    },
                  ),
                ],
              ),
            ),
          ),
          // Нижняя часть для кнопок навигации
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightBlue.shade700,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Переход на предыдущий экран
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('Назад'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GoalsScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('Цель'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const StatisticsScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('Статистика'),
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
