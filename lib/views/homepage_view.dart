import 'package:flutter/material.dart';
import 'package:talking_lands/widgets/navigation_drawer_widget.dart';

import 'map_view.dart';

class Homepage extends StatelessWidget {
  final String? title;
  Homepage({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        centerTitle: false,
      ),
      body: MapWidget(),
      drawer: NavigationDrawerWidget(),
    );
  }
}
