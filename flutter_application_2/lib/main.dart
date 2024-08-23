import 'package:flutter/material.dart';
import 'package:flutter_application_2/secondscreen.dart';

// lab Task 01 TODO List
void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // using routes name inmaterialApp
        // navigation using routing
        "/home": (context) => TodoApp(),
        "/second": (context) => const Secondscreen(),
      },
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final List<String> tasks = [
    'Buy groceries: Milk, Bread, Eggs',
    'Complete Flutter project: Due tomorrow',
    'Walk the dog: In the evening',
    'Read a book: Chapter 4'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Todo List')),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.check),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: const Text("mark your task"),
                              duration: const Duration(seconds: 2),
                              action: SnackBarAction(
                                label: "clickAble",
                                onPressed: () {},
                              ),
                            ));
                            // logic of check button
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            // logic of delete button
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // logic of delete all button
                    Navigator.pushNamed(context, '/third');
                  },
                  child: const Text('Delete All'),
                  style: ButtonStyle(
                    elevation: WidgetStatePropertyAll(10),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // logic of add task button
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('Add to task'),
                  style: ButtonStyle(
                    elevation: WidgetStatePropertyAll(10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
