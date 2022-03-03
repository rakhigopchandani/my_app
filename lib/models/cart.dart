// ignore_for_file: unused_local_variable, unused_element, unnecessary_null_comparison

import 'package:my_app/models/catalog.dart';

class CartModel {
  // catalog field

  late CatalogModel _catalog;

  //collection of Ids - stores Ids of each Item
  final List<int> _itemIds = [];
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
