import 'package:flutter/material.dart';
import 'task_item_widget.dart';

class ListTaskWidget extends StatelessWidget {
  final List listToDo;
  final Function(bool?, int) onChanged;
  final Function(int) onRemoved;

  const ListTaskWidget(
      {Key? key,
        required this.onChanged,
        required this.listToDo,
        required this.onRemoved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: listToDo.length,
        itemBuilder: (_, index) {
          var task = listToDo[index];
          return TaskItemWidget(
            onDismissed: (direction) => onRemoved(index),
            title: task.description,
            completed: task.completed,
            onChanged: (value) => onChanged(value, index),
          );
        });
  }
}
