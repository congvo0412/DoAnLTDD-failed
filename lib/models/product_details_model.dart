class Product {
  final String image;
  final String name;
  final int price;
  final String size;
  final String description;

  Product({
    required this.image,
    required this.name,
    required this.price,
    required this.size,
    required this.description,
  });
}

final List<Product> products = [
    Product(
      image: 'prd2.jpg',
      name: 'Áo thun',
      price: 200,
      size: 'L',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
    Product(
      image: 'prd3.jpg',
      name: 'Dragon Plant',
      price: 200,
      size: 'L',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),

  ];