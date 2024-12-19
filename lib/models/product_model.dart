class ProductModel {
  final int id;
  final String title;
  final String imageurl;
  final double price;
  final String shortDisc;
  final String longDisc;
  final int riviews;
  final double rating;
  final bool isselected;
  final int qty;

  ProductModel({
    required this.id,
    required this.title,
    required this.imageurl,
    required this.price,
    required this.shortDisc,
    required this.longDisc,
    required this.riviews,
    required this.rating,
    this.qty = 1,
    this.isselected = false,
  });

  // CopyWith method
  ProductModel copyWith({
    int? id,
    String? title,
    String? imageurl,
    double? price,
    String? shortDisc,
    String? longDisc,
    int? riviews,
    double? rating,
    bool? isselected,
    int? qty,
  }) {
    return ProductModel(
      id: id ?? this.id,
      title: title ?? this.title,
      imageurl: imageurl ?? this.imageurl,
      price: price ?? this.price,
      shortDisc: shortDisc ?? this.shortDisc,
      longDisc: longDisc ?? this.longDisc,
      riviews: riviews ?? this.riviews,
      rating: rating ?? this.rating,
      isselected: isselected ?? this.isselected,
      qty: qty ?? this.qty,
    );
  }
}

List<ProductModel> listProductModel = [
  ProductModel(
    id: 1,
    title: "Air pords",
    imageurl: "images/1.png",
    price: 120,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
  ProductModel(
    id: 2,
    title: "tablets",
    imageurl: "images/2.png",
    price: 78.3,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
  ProductModel(
    id: 3,
    title: "Mobiles",
    imageurl: "images/3.jpeg",
    price: 33,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
  ProductModel(
    id: 4,
    title: "Iphone x+",
    imageurl: "images/4.jpeg",
    price: 33,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
  ProductModel(
    id: 5,
    title: "Samsung",
    imageurl: "images/5.jpeg",
    price: 0.93,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
  ProductModel(
    id: 6,
    title: "Huwie",
    imageurl: "images/6.jpeg",
    price: 123,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
  ProductModel(
    id: 7,
    title: "machines",
    imageurl: "images/7.jpeg",
    price: 330,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
  ProductModel(
    id: 5,
    title: "Macbooks",
    imageurl: "images/5.jpeg",
    price: 0.93,
    shortDisc: "shortDisc",
    longDisc: "longDisc",
    riviews: 12,
    rating: 12,
  ),
];
