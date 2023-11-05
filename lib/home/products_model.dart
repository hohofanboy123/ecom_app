
class Product {
  final String image;
  final String title;
  final double price;
  final bool isFavourite;

  Product({
    required this.image, 
    this.isFavourite = false,
    required this.title,
    required this.price,
  });
}


List<Product> popularProducts = [
  Product(
    image: "assets/images/Image Popular Product 1.png",
    title: "Wireless Controller for PS4™",
    price: 64.99,
    isFavourite: true,
  ),
  Product(
    image: "assets/images/Image Popular Product 2.png",
    title: "Nike Sport White - Man Pant",
    price: 50.5,
  ),
  Product(
    image: "assets/images/Image Popular Product 3.png",
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    isFavourite: true,
  ),
];