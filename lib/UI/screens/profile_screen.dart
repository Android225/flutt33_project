import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade700,
        title: const Text('Профиль'),
      ),
      body: Column(
        children: <Widget>[
          // Верхняя часть для контента профиля
          Expanded(
            flex: 4, // 4/5 экрана
            child: Container(
              color: Colors.lightBlue.shade100,
              child: const Center(
                child: Text(
                  'Информация о профиле',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          // Нижняя часть для кнопок навигации
          Expanded(
            flex: 1, // 1/5 экрана
            child: Container(
              color: Colors.lightBlue.shade700,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
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
