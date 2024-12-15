class ProductModel {
  final int id;
  final String title;
  final String imageurl;
  final int price;
  final String shortDisc;
  final String longDisc;
  final int riviews;
  final double rating;
  bool isselected;
  final int qty;

  ProductModel(
      {required this.id,
      required this.title,
      required this.imageurl,
      required this.price,
      required this.shortDisc,
      required this.longDisc,
      required this.riviews,
      required this.rating,
      this.qty = 1,
      this.isselected = false});
}

List<ProductModel> listProductModel = [
  ProductModel(
    id: 1,
    title: "Air pords",
    imageurl: "images/1.png",
    price: 33,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
  ProductModel(
    id: 2,
    title: "Air pords",
    imageurl: "images/1.png",
    price: 33,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
];
