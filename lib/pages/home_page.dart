

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';

import '../utils/widgets/drawer.dart';
import '../utils/widgets/item_widget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //int days = 30;
    //String name = "Home";
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        
      
        title: Center(child: Text("CATALOG APP"
        )),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
         itemCount: dummyList.length,
         itemBuilder: (context, index){
          return ItemWidget(item: dummyList[index],
          
          );

         },

        ),
      ), 
    
  
      drawer: MyDrawer(),
  
    );
  }
}
