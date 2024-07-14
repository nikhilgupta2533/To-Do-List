// import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

class TodoList extends StatelessWidget {
  const TodoList(
      {super.key,
        required this.taskName,
        required this.taskCompleted,
        required this.onChanged,
        required this.deleteFunction});

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 0,
        left: 20,
        right: 20,
      ),
      child: Slidable(
        startActionPane: ActionPane(
          motion: StretchMotion(),
          children:[
            SlidableAction(onPressed: deleteFunction,
            icon: Icons.delete,
            borderRadius: BorderRadius.circular(15),
            backgroundColor: Colors.red,)
          ],
        ),
        child: Container(
          // width: 400,
          padding: const EdgeInsets.all(20),
          // Isse Squares bade bade hoo gye
          decoration:
          BoxDecoration(
            color: const Color(0xFF1A2433),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                checkColor: const Color(0xFF1A2433), // Corrected color definition
                activeColor: Colors.red,
                side: const BorderSide(color: Colors.red),
              ),
              Text(
                taskName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  decorationColor: Colors.red,
                  decorationThickness: 2
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
