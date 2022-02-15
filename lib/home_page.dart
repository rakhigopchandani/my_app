import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Rakhi";

    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(child: Text("MY CATALOG APP")),
      ),
      body: Center(
        // ignore: prefer_const_constructors
        child: Text("welcome to $days days of flutter with $name"),
      ),
      // ignore: prefer_const_constructors
      drawer: Drawer(),
    );
  }
}
