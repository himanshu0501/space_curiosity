import 'package:flutter/material.dart';
import 'package:space_curiosity/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // scaffold contains more functions than Material so better use Scaffold
        appBar: AppBar(
          // it gives the bar of App
          title: Text("Space Curiosity"), // the name of App at the top
        ),
        body: Center(
          // it is same as the HTML body
          child: Container(
            child: Text('welcome'),
          ),
        ),
        drawer: MyDrawer(), // the side drawer is given here
      ),
    );
  }
}
