import 'package:flutter/material.dart';
import 'package:flutter_application_2/app_colors.dart';
import 'package:flutter_application_2/todo/data/models/todo_model.dart';

class TodoWidget extends StatelessWidget {
  final TodoModel todo;
  final VoidCallback? onEditTap;
  final VoidCallback? onDeleteTap;
  final VoidCallback? onCompleted;
  const TodoWidget({
    super.key,
    required this.todo,
    this.onEditTap,
    this.onDeleteTap,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.title,
                    style: TextStyle(
                      decoration:
                          todo.isCompleted ? TextDecoration.lineThrough : null,
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    todo.description,
                    style: TextStyle(
                      decoration:
                          todo.isCompleted ? TextDecoration.lineThrough : null,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: onEditTap,
                  icon: Icon(
                    Icons.edit,
                    color: AppColors.primary,
                  ),
                ),
                IconButton(
                  onPressed: onDeleteTap,
                  icon: Icon(
                    Icons.delete,
                    color: AppColors.primary,
                  ),
                ),
                IconButton(
                  onPressed: onCompleted,
                  icon: todo.isCompleted
                      ? Icon(
                          Icons.check_box_rounded,
                          color: AppColors.primary,
                        )
                      : Icon(
                          Icons.check_box_outline_blank_rounded,
                          color: AppColors.primary,
                        ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
