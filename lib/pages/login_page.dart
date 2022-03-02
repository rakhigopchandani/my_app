// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Welome to LoginPage $name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter username",
                              labelText: "Username"),
                          // ignore: non_constant_identifier_names
                          validator: (Value) {
                            if (Value!.isEmpty) {
                              return "Please Enter Your Name";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          }),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your Password";
                            } else if (value.length < 6) {
                              return "Password length should be atleast 6";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        color: Colors.brown,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 40.0,
                            width: changeButton ? 50 : 100.0,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                          ),
                        ),
                      ),

                      // ElevatedButton(
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(
                      //     minimumSize: Size(80, 40),
                      //   ),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      // },
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
