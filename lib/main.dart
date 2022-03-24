import 'package:flutter/material.dart';
import 'package:space_curiosity/homepage.dart';

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
    // If UI need to refreshed we must call build.
    return MaterialApp(
      home: HomePage(),
    );
  }
  // ctrl + . is used for wrapping in vscode
  // and alt + z is used for wrap of text in single page i.e if the text gets long horizontally then vscode auto correct the texts and them in newline so that every text comes in a single page.
}
