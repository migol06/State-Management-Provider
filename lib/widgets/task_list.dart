import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

import 'widgets.dart';

class TileList extends StatelessWidget {
  const TileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDataModel>(
      builder: (context, value, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                onTap: () {
                  value.deleteTask(value.task[index]);
                },
                desc: value.task[index].desc,
                isChecked: value.task[index].isChecked!,
                onChanged: (bool? done) {
                  value.updateTask(value.task[index]);
                });
          },
          itemCount: value.taskLength,
        );
      },
    );
  }
}
