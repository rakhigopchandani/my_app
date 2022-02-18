
import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/utils/routes.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily:GoogleFonts.lato().fontFamily,
        
      ),
      
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
     initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context)=> LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}
