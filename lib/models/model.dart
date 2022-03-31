class Model {
  static final items = [
    Item(
        id: "Image Credit & Copyright: Dietmar Hager, Eric Benson",
        name: "constellation Corvus",
        desc:
            "Some 60 million light-years away in the southerly constellation Corvus, two large galaxies are colliding. Stars in the two galaxies, cataloged as NGC 4038 and NGC 4039, very rarely collide in the course of the ponderous cataclysm that lasts for hundreds of millions of years.",
        price: "2022/03/31",
        color: "#3505a",
        image: "https://apod.nasa.gov/apod/image/2203/Arp244-LRGB1024.jpg"),
    Item(
        id: "Image Credit & Copyright: Carlos Kiko Fairbairn",
        name: "Venus and Mars: Passing in the Night",
        desc:
            "When two planets pass on the night sky, they can usually be seen near each other for a week or more. In the case of this planetary conjunction, Venus and Mars passed within 4 degrees of each other earlier this month. The featured image was taken a few days prior, when Venus was slowing rising in the pre-dawn sky, night by night, while Mars was slowly setting. The image, a four-part mosaic, was captured in Brazil from the small town Teresópolis. ",
        price: "price",
        color: "color",
        image:
            "https://apod.nasa.gov/apod/image/2203/VenusMars_Fairbairn_960_annotated.jpg"),
    Item(
        id: "Image Credit & Copyright: Petr Horálek",
        name: "Gems of a Maldivean Night",
        desc:
            "The southernmost part of the Milky Way contains not only the stars of the Southern Cross, but the closest star system to our Sun -- Alpha Centauri. The Southern Cross itself is topped by the bright, yellowish star Gamma Crucis. A line from Gamma Crucis through the blue star at the bottom of the cross, Acrux, points toward the south celestial pole, located just above the small island in the featured picture -- taken in early March. That island is Madivaru of the Maldives in the Indian Ocean.  ",
        price: "price",
        color: "color",
        image:
            "https://apod.nasa.gov/apod/image/2203/SouthIsland_Horalek_960_annotated.jpg"),
    Item(
        id: "Image Credit:NASA,JPL-Caltech,U. Arizona,U. Idaho",
        name: "Titan Seas Reflect Sunlight",
        desc:
            "Why would the surface of Titan light up with a blinding flash? The reason: a sunglint from liquid seas. Saturn's moon Titan has numerous smooth lakes of methane that, when the angle is right, reflect sunlight as if they were mirrors. Pictured here in false-color, the robotic Cassini spacecraft that orbited Saturn from 2004 to 2017 imaged the cloud-covered Titan in 2014 in different bands of cloud-piercing infrared light. This specular reflection was so bright it saturated one of Cassini's infrared cameras. ",
        price: "price",
        color: "color",
        image:
            "https://apod.nasa.gov/apod/image/2203/SouthIsland_Horalek_960_annotated.jpg"),
    Item(
        id: "Image Credit: NASA, Johns Hopkins Univ./APL,SRI",
        name: "Pluto at Night",
        desc:
            " The night side of Pluto spans this shadowy scene. In the stunning spacebased perspective the Sun is 4.9 billion kilometers (almost 4.5 light-hours) behind the dim and distant world. It was captured by far flung New Horizons in July of 2015 when the spacecraft was at a range of some 21,000 kilometers from Pluto, about 19 minutes after its closest approach. A denizen of the Kuiper Belt in dramatic silhouette, the image also reveals Pluto's tenuous, surprisingly complex layers of hazy atmosphere.",
        price: "price",
        color: "color",
        image:
            "https://apod.nasa.gov/apod/image/2203/PIA20727PlutoNight1024c.jpg")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final String price;
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
