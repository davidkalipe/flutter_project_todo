import 'package:flutter/material.dart';
import 'package:flutter_task_manager/screens/task_list.dart';

import 'models/task.dart';



List<Task> tasks = [
  Task(title: 'Manger', dueDate: DateTime.now(), isCompleted: false),
  Task(title: 'Faire du sport', dueDate: DateTime.now(), isCompleted: false),
  Task(title: 'Ecole', dueDate: DateTime.now(), isCompleted: false)
];
void main () => runApp(const MaterialApp(
  home: TaskList(),
));

