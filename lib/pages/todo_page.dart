import 'package:flutter/material.dart';
import 'package:flutter_todo_app/data/todo_sevice.dart';
import '../models/todo.dart';

class TodoPage extends StatefulWidget {
  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TodoService todoService = TodoService.instance;

  final titleController = TextEditingController();

  final descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final titleField = TextFormField(
      controller: titleController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
    final descriptionField = TextFormField(
      controller: descController,
      maxLines: 5,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );

    final saveButton = TextButton(
      onPressed: () {
        todoService
            .addTodo(Todo(
                //id: ,
                title: titleController.text,
                description: descController.text,
                isDone: false,
                id: 0))
            .then((value) => Navigator.pop(context));
      },
      child: const Text(
        "Save",
        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("New To do"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: titleField,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: descriptionField,
          ),
          saveButton,
        ],
      ),
    );
  }
}
