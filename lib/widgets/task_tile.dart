import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.desc,
    required this.isChecked,
    required this.onChanged,
  }) : super(key: key);

  final String desc;
  final bool isChecked;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        desc,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
