import 'package:flutter/material.dart';
import 'package:flutter_task_manager/screens/task_details.dart';

import '../models/task.dart';
import 'add_task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(title: 'Manger', dueDate: DateTime.now(), isCompleted: false),
    Task(title: 'Faire du sport', dueDate: DateTime.now(), isCompleted: false),
    Task(title: 'Ecole', dueDate: DateTime.now(), isCompleted: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Liste des tâches"),
      ),
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tasks[index].title),
              subtitle: Text(tasks[index].dueDate.toString()),
              trailing: Icon(tasks[index].isCompleted
                  ? Icons.check
                  : Icons.check_box_outline_blank),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskDetails(task: tasks[index]),
                  ),
                );
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddTask(),
              ),
            ).then((newTask) {
              setState(() {
                tasks.add(newTask);
              });
            });
          }),
    );
  }
}
