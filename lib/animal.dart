class Animal {
  String name;
  String scienceName;
  String type;
  String image;
  String info;
  String habitat;

  Animal(Map<String, String> items, String imageMap) {
    items.forEach((key, value) {
      if (key=="name") name = value;
      if (key=="sciencename") scienceName = value;
      if (key=="type") type = value;
      if (key=="image") image = imageMap + value;
      if (key=="info") info = value;
      if (key=="habitat") habitat = value;
    });
  }
}


