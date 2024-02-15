import 'package:intl/intl.dart';
final formatter = DateFormat.yMd();

class Task {
  String title;
  DateTime dueDate;
  String status;
  bool  isCompleted;

  Task({required this.title, required this.dueDate, required this.status, required this.isCompleted});


  String get formatedDate {
    return formatter.format(dueDate);
  }
}