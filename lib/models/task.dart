import 'package:intl/intl.dart';
final formatter = DateFormat.yMd();

class Task {
  String title;
  DateTime dueDate;
  bool  isCompleted;

  Task({required this.title, required this.dueDate, required this.isCompleted});


  String get formatedDate {
    return formatter.format(dueDate);
  }
}