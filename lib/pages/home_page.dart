// ignore_for_file: prefer_const_constructors, avoid_print, unused_import, avoid_web_libraries_in_flutter, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catalog.dart';
import 'dart:convert';
import '../models/catalog.dart';

import '../utils/widgets/drawer.dart';
import '../utils/widgets/item_widget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
    //print(list);
  }

  @override
  Widget build(BuildContext context) {
    //int days = 30;
    //String name = "Home";

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CATALOG APP")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    
                    
                    ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(10) 
                      
                      ),
                    child: GridTile(
                      header:Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.brown
                        ),
                        child: Text(item.name, style: TextStyle(color: Colors.white),)),
                      child: Image.network(item.image),
                    footer:Container(child: Text(item.price.toString()),
                    padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.brown
                    ),
                    
                    ),
                    ) 
                );
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
