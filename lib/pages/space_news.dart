import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class SpaceNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            "Space Curiosity".text.xl5.bold.make(),
            "Space News".text.xl2.make(),
            ElevatedButton(
              child: Text('Recent News'),
              onPressed: () async {
                const url = 'https://spacenews.com/';
                await launch(
                  url,
                  forceSafariVC: true,
                  forceWebView: true,
                  enableJavaScript: true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
