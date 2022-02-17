
import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
     // initialRoute: "/home",
      routes: {
        "/": (context)=> LoginPage(),
        "/home":(context) => HomePage(),
        "/login":(context) => LoginPage(),
      },
    );
  }
}
