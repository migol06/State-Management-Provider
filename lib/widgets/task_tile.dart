import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.desc,
    required this.isChecked,
    required this.onChanged,
    required this.onTap,
  }) : super(key: key);

  final String desc;
  final bool isChecked;
  final Function(bool?) onChanged;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onTap,
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
