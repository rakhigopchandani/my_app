// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_constructors
      home: HomePage(),
    );
  }
}
