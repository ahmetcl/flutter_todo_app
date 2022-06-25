import 'package:flutter/material.dart';
import 'package:flutter_todo_app/pages/todo_list_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: TodoListPage(
          key: null,
        ),
      ),
    );
  }
}
