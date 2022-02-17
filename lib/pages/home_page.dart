// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //int days = 30;
    String name = "Home";

    return Scaffold(
      appBar: AppBar(
      
        title: Center(child: Text("MY CATALOG APP")),
      ),
      body: Center(
        
        child: Text("Welcome To $name Page"),
      ),
  
      drawer: Drawer(),
    );
  }
}
