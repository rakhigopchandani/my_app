
import 'package:flutter/cupertino.dart';

class CatalogModel{

static final items = [
  Item(
id: 01,
name:"IPhone 6",
desc:"Apple 6th generation",
price: 999,
color: "#33505a",
image: Image.asset("assets/images/iphone6.jpg"),
)];


}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  // ignore: prefer_typing_uninitialized_variables
  final  image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}


