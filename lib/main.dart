import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_curiosity/pages/homepage.dart';
import 'package:space_curiosity/pages/loginpage.dart';

void main() {
  runApp(space_curiosity());
}

// data types int,double,String,bool,const
// num -> it can take int and double both
// var-> it can auto compile whether it is a string or an int
// e.g var name= "himanshu", var name = 5

class space_curiosity extends StatelessWidget {
  @override //build is the function which will be responsible for UI
  Widget build(BuildContext context) {
    // function starts with small letter
    // If UI need to refreshed we must call build.
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light, // specify the theme
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // it specify properties for light theme
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // this will use the fonts of google
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // dark theme will work only when we specifiy the Themedata and its properties
      ),
      initialRoute: "/",
      // it tells which page will show in the start (by default "/" shows in the start)
      routes: {
        // defines the routes in the app
        "/": (context) => LoginPage(), // object starts with capital letter
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        // either gave the home: or "/" route both at the same time will give error
      },
    );
  }
  // classes are blueprint and there object always starts with captial letter
  // ctrl + . is used for wrapping in vscode
  // and alt + z is used for wrap of text in single page i.e if the text gets long horizontally then vscode auto correct the texts and them in newline so that every text comes in a single page.
  // for comment in vscode use ctrl + /
}
