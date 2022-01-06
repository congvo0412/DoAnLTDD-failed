class ProductDetail{
  final String image;
  final String name;
  final int price;
  ProductDetail({
    required this.image,
    required this.name,
    required this.price,
  });
}

final List<ProductDetail> productdetails = [
    ProductDetail(
      image: 'prd2.jpg',
      name: 'Áo thun',
      price: 200,
    ),
    ProductDetail(
      image: 'prd3.jpg',
      name: 'Dragon Plant',
      price: 200,
    ),
  ];