// ignore_for_file: prefer_const_constructors, prefer_const_declarations, avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final imageUrl = Image.asset("assets/images/icon.png"); 
    
    return Drawer(
      child: Container(
        color: Colors.brown,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Rakhi Gopchandani"),
                  accountEmail: Text("rakhigopcahndani@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: (imageUrl.image),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ), 
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ), 
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "E-mail",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}
