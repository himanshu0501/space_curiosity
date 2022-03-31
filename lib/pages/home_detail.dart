import 'package:flutter/material.dart';
import 'package:space_curiosity/models/model.dart';
import 'package:space_curiosity/pages/homepage.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item value;

  const HomeDetailPage({Key? key, required this.value})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Image.network(value.image).h40(context).p16(),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    value.name.text.xl4.color(darkBluishColor).bold.make(),
                    value.desc.text.color(Colors.grey).xl.make(),
                    10.heightBox,
                  ],
                ).py32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
