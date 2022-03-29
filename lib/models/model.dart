class Model {
  static final items = [
    Item(
        id: "1",
        name: "iphone 12",
        desc: "Apple 12th generation",
        price: 999,
        color: "#3505a",
        image: "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-r1.jpg")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
