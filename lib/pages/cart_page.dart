// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:my_app/utils/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
class CartPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
    );
  }
}