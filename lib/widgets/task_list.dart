import 'package:flutter/material.dart';

import 'widgets.dart';

class TileList extends StatelessWidget {
  const TileList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [TaskTile()]);
  }
}
