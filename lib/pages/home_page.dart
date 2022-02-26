// ignore_for_file: prefer_const_constructors, avoid_print, unused_import, avoid_web_libraries_in_flutter, unnecessary_null_comparison, import_of_legacy_library_into_null_safe, duplicate_import, avoid_unnecessary_containers, use_key_in_widget_constructors, duplicate_ignore, unnecessary_string_escapes
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catalog.dart';
import 'dart:convert';
import 'package:my_app/utils/widgets/drawer.dart';
import 'package:my_app/utils/widgets/home_widgets/catalog_header.dart';
import 'package:my_app/utils/widgets/home_widgets/catalog_list.dart';
import 'package:my_app/utils/widgets/item_widget.dart';
import 'package:my_app/utils/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

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
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
            child: Container(
                padding: Vx.m32,
                child: Column(
                  children: [
                    CatalogHeader(),
                    if (CatalogModel.items != null &&
                        CatalogModel.items.isNotEmpty)
                      CatalogList().py16().expand()
                    else
                       CircularProgressIndicator().centered().expand(),
                     
                  ],
                ))));
  }
}





