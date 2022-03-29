import 'package:flutter/material.dart';
import 'package:space_curiosity/models/model.dart';
import 'package:space_curiosity/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomeP age extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // scaffold contains more functions than Material so better use Scaffold
        appBar: AppBar(
          // it gives the bar of App
          title: Text("Space Curiosity"), // the name of App at the top
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: Model.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: Model.items[index],
              );
            },
          ),
        ),
        drawer: MyDrawer(), // the side drawer is given here
      ),
    );
  }
}
