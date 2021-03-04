import 'package:flutter/material.dart';

import 'animalslist.dart';

void main() {
  runApp(Start());
}

class Start extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
  home: DefaultTabController(
    length: 2,
      child: Scaffold(
      appBar: AppBar(
          title: Text("Het dierenrijk"),
          bottom: TabBar(
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          tabs: [
            Tab(text: 'Alle'),
            Tab(text: 'Zoogdier'),
          ]
      ),
    ),
      body: TabBarView(
          children: <Widget>[
            AppTree(),
            Scherm2(),
          ]
      ),
    ),
  ),
  );
}

class AppTree extends StatelessWidget {
  Widget build(BuildContext context) {
    return AnimalsList();
  }
}

class Scherm2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return AnimalsList();
  }
}
