import 'dart:async';
import 'dart:io';

import 'animal.dart';
import 'data.dart';

class AnimalReader {
  String _imageMap;

  AnimalReader(this._imageMap);

  int size() {
    return animals.length;
  }

  Animal getAnimal(int nr) {
    if (nr>=0 && nr<animals.length) {
      return Animal(animals[nr], _imageMap);
    }
    return null;
  }
}