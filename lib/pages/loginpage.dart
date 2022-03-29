// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
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
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              // instead of sizedbox we can do wrapping using padding
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    // instead of sizedbox we can do wrapping using padding
                    height: 20.0,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                    // to check some property of already build function we can use ctrl + click to go to that function

                    onPressed: () {
                      print("hello");
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
  // one way to add font is to add in assets and then change in pubspec file or other can be add direct dependencies in the file
}
