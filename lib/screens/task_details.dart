import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/task.dart';

class TaskDetails extends StatelessWidget {
  final Task task;

  const TaskDetails({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(task.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(task.title, style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w400),),
            Text(task.dueDate.toString(), style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w400),),
          ],
        ),
      ),
    );
  }
}
