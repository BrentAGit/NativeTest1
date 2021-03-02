import 'package:flutter/material.dart';
import 'dart:io';

import 'animalreader.dart';
import 'animal.dart';

class AnimalsList extends StatefulWidget {
  @override
  State createState() => _AnimalsListState();
}

class _AnimalsListState extends State<AnimalsList> {
  List<Animal> animals = List();
  bool iniLoaded = false;
  final imagePath = "assets/images/";
  TextStyle style = TextStyle(color: Colors.black, fontFamily: 'Open Sans');

  @override
  void initState() {
    super.initState();
    _readAnimals();
  }

  void _readAnimals() {
    AnimalReader ar = AnimalReader(imagePath);
    for (int i=0; i<ar.size(); i++) {
      animals.add(ar.getAnimal(i));
    }
    setState(() {
      iniLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (iniLoaded) {
      return ListView.builder(
          itemCount: animals.length,
          itemBuilder: (context, index) {
            return makeAnimalTile(animals[index]);
          }
      );
    } else {
      return Container(child: Text('ini wordt gelezen'));
    }
  }

  ListTile makeAnimalTile(Animal animal) {
    return ListTile(
      title: Text(animal.name),
      subtitle: Text(animal.type + " / " + animal.scienceName),
      leading: ClipOval(
        child: Image.asset(
          animal.image,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
