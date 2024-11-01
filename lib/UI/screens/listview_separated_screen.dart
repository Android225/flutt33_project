import 'package:flutter/material.dart';

class ListViewSeparatedScreen extends StatefulWidget {
  const ListViewSeparatedScreen({Key? key}) : super(key: key);

  @override
  _ListViewSeparatedScreenState createState() => _ListViewSeparatedScreenState();
}

class _ListViewSeparatedScreenState extends State<ListViewSeparatedScreen> {
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
        title: const Text('Список на ListView.separated'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => deleteItem(index),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(); // Разделитель
              },
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
