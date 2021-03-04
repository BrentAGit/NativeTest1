import 'package:flutter/material.dart';

import 'animalreader.dart';
import 'animal.dart';
import 'animalslist.dart';

class AnimalView extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("animal.name"), //Weet niet hoe ik data uit data.dart naar deze file overzet <<<<<<<<
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child:Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                "animal.image",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
        ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 2),
                  child: Text("animal.name" + " (" + "animal.type" + ")",
                  style: TextStyle(
                    fontSize:18
                  ))
            ),
      ),
    ])));
  }
}
