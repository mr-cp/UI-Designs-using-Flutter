class Product {
  final int id, price;
  final String title, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.image});
}

List<Product> products = [
  Product(
      id: 1,
      price: 235,
      title: "Classic Leather Armless Chair",
      image: "lib/assets/images/img2.png",
      description:
          "Classic made with crocodile leather furnished for living room"),
  Product(
      id: 1,
      price: 205,
      title: 'Johns Armed Wooden Tub Chair ',
      description: 'Wooden chair with tub model handcraft',
      image: "lib/assets/images/img1.png"),
  Product(
      id: 1,
      price: 376,
      title: 'Buggle Steel Golden Royal Chair',
      description: 'Steel chair buggle with amber support',
      image: "lib/assets/images/img3.png"),
  Product(
      id: 1,
      price: 362,
      title: 'Bar Long Stool with back support',
      description: 'Chair used in bar counter with a back support',
      image: "lib/assets/images/img4.png")
];
