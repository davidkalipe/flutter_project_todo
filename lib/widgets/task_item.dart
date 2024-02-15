import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({required this.task, super.key,});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 3,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Gap(3),
              Row(
                children: [
                  const Spacer(),
                  Row(
                    children: [
                      const SizedBox(width: 8),
                      Text(
                        task.formatedDate,
                        style: GoogleFonts.lato(fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
