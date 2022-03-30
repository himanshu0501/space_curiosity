import 'package:flutter/material.dart';
import 'package:space_curiosity/models/model.dart';
import 'package:space_curiosity/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/item_widget.dart';

Color creamColor = Color(0xfff5f5f5);
Color darkBluishColor = Color(0xff403b58);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Space Curiosity".text.xl5.bold.color(darkBluishColor).make(),
              "New Nasa Pictures".text.xl2.make(),
              if (Model.items != null && Model.items.isNotEmpty)
                ModelList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

class ModelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Model.items.length,
      itemBuilder: (context, index) {
        final value = Model.items[index];
        return ModelItem(value: value);
      },
    );
  }
}

class ModelItem extends StatelessWidget {
  final Item value;

  const ModelItem({Key? key, required this.value})
      : assert(value != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Image.network(value.image)
            .box
            .rounded
            .p8
            .color(creamColor)
            .make()
            .p16()
            .w40(context)
      ],
    )).white.rounded.square(150).make().py16();
  }
}
