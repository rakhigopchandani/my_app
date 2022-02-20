// ignore_for_file: unused_import, avoid_web_libraries_in_flutter
import 'dart:convert';
import 'package:flutter/cupertino.dart';

class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "des": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
