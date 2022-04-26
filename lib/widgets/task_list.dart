import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';

import 'widgets.dart';

class TileList extends StatefulWidget {
  const TileList({
    Key? key,
    this.tasks,
  }) : super(key: key);

  final List<Task>? tasks;

  // const TileList(this.tasks);

  @override
  State<TileList> createState() => _TileListState();
}

class _TileListState extends State<TileList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            desc: widget.tasks![index].desc,
            isChecked: widget.tasks![index].isChecked!,
            onChanged: (bool? done) {
              setState(() {
                widget.tasks![index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks!.length,
    );
  }
}
