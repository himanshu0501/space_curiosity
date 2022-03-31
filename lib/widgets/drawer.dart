// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_curiosity/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://i.pinimg.com/564x/77/5b/91/775b91d4b1bfcac2aa3292b47763c1b1.jpg";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Himanshu"),
              accountEmail: Text("himns0501@gmail.com"),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.photo_fill_on_rectangle_fill,
            ),
            title: Text(
              "Daily Nasa Pictures",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.rocket,
            ),
            title: Text(
              "SpaceX launch Tracker",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.news,
            ),
            title: Text(
              "Latest Space News",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.location,
            ),
            title: Text(
              "ISS Tracker",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.number_circle_fill,
            ),
            title: Text(
              "Weight Calculator",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.arrow_right_circle,
            ),
            title: Text(
              "Log out",
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
