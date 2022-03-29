// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:space_curiosity/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

// stateless means we don't change anything on screen and in statefull we want to see the change in our screen
// different section can change their state depending on the performance of app
// _ is used in front of class name coz _ is used to make private in the flutter
class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          // it will help in scroll when device become small and avoid the bottom overflow error
          child: Form(
            key: _formkey, // this key associated with this form
            child: Column(
              // for column vertical axis is the main axis
              // child concept is about single child where children concept is many childs under a single parent.
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover, // fit the image
                ),
                SizedBox(
                  // instead of sizedbox we can do wrapping using padding
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  // instead of sizedbox we can do wrapping using padding
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                          // it will change the UI or state or call build method (work only in statefull widget)
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        // instead of sizedbox we can do wrapping using padding
                        height: 40.0,
                      ),
                      // to buid your own button we can use container and in that we can add our own annimation (in day 6)
                      ElevatedButton(
                        child: Text("Login"),
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        // to check some property of already build function we can use ctrl + click to go to that function

                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          }
                          // when login will be pressed we will go to home page
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
