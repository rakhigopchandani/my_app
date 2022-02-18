// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final imageUrl = ""; 
    //"https://www.google.com/imgres?imgurl=https%3A%2F%2Fuxwing.com%2Fwp-content%2Fthemes%2Fuxwing%2Fdownload%2F12-peoples-avatars%2Ffemale-user.png&imgrefurl=https%3A%2F%2Fuxwing.com%2Ffemale-user-icon%2F&tbnid=aHpbVUOaEtZjYM&vet=12ahUKEwiN6erb6Yn2AhWMNuwKHe0oA3YQMygOegUIARD-AQ..i&docid=7FjklY2KZgXiQM&w=488&h=512&q=user%20icon&hl=en&ved=2ahUKEwiN6erb6Yn2AhWMNuwKHe0oA3YQMygOegUIARD-AQ";

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
                    backgroundImage: NetworkImage(imageUrl),
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
