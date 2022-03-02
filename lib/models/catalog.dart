// ignore_for_file: unused_import, avoid_web_libraries_in_flutter, null_closures
import 'dart:convert';
import 'package:flutter/cupertino.dart';

class CatalogModel {
  static List<Item> items = [];

// get item by ID
  static Item getBuId(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //get item by position
  static Item getByPosition(int pos) => items[pos];
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
}
