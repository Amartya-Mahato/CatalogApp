
class CatalogModel {
  static final item = [
  Item(
      id: 04,
      name: "oppo f9",
      desc: "oppo product f9 generation ",
      price: 1000,
      color: "#00937d",
      image: "https://www.cometbuster.com/product/gallery/f9pur.jpg"),
];
}
class Item {
  late final int id;
  late final String name;
  late final num price;
  late final String desc;
  late final String color;
  late final String image;
  Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.desc,
      required this.color,
      required this.image});
}


