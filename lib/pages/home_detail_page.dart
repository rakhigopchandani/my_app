// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/utils/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key,required this.catalog})
   : assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.xl2.red800.bold.make(),
                  ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(MyTheme.blackish),
                    shape: MaterialStateProperty.all(StadiumBorder())
                  ),
                   child: "Buy".text.size(0).make()).wh(70, 35)
                ],
              ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)).h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [catalog.name.text.xl.bold.color(MyTheme.blackish).make(),
                   catalog.desc.text.medium.make(),
                   10.heightBox,
                    ],
                  ).py64(),
                              ),
                ))
          ],
        ),
      )
    );
  }
}
