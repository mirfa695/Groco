import 'dart:ui';

class Item {
  final Color color;
  final String name;
  final int price;
  final String image;

  Item(
      {required this.name, required this.color, required this.price, required this.image});

  Map toJson() {
    return {
      'name': name,
      'color': color,
      'price': price,
      'image': image,
    };
  }
}