import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  final String title;
  final bool completed;
  final Function(bool?) onChanged;
  final Function(DismissDirection)? onDismissed;

  const TaskItemWidget(
      {Key? key,
      required this.title,
      required this.completed,
      required this.onChanged,
      required this.onDismissed,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      onDismissed: (direction){},
      child: CheckboxListTile(
        value: completed,
        onChanged: (value) {
          onChanged;
        },
        title: Text(
          title,
          style: TextStyle(
            decoration: completed ? TextDecoration.lineThrough : null,
          ),
        ),
        secondary: Icon(completed ? Icons.check_circle : Icons.error),
      ),
      background: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: const Align(
          alignment: Alignment(-0.9,0),
          child: Icon(Icons.delete, color: Colors.white,),),
      ),
      direction: DismissDirection.startToEnd,
    );
  }
}
