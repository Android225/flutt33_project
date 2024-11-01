import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  _ColumnScreenState createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  List<String> items = [];

  void addItem(String item) {
    setState(() {
      items.add(item);
    });
  }

  void deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список на Column'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: items.map((item) {
                int index = items.indexOf(item);
                return ListTile(
                  title: Text(item),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => deleteItem(index),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: addItem,
              decoration: const InputDecoration(
                hintText: 'Добавить элемент',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
