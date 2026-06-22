class Product {
  final int id;
  final String name;
  final String category;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
  });
}

final List<Product> products = [
  Product(
    id: 1,
    name: 'Running Shoes',
    category: 'Shoes',
    price: 1299,
    imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400',
  ),
  Product(
    id: 2,
    name: 'Casual T-Shirt',
    category: 'Clothing',
    price: 499,
    imageUrl: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400',
  ),
  Product(
    id: 3,
    name: 'Wrist Watch',
    category: 'Accessories',
    price: 2499,
    imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
  ),
  Product(
    id: 4,
    name: 'Backpack',
    category: 'Bags',
    price: 999,
    imageUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400',
  ),
  Product(
    id: 5,
    name: 'Sunglasses',
    category: 'Accessories',
    price: 799,
    imageUrl: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=400',
  ),
  Product(
    id: 6,
    name: 'Sneakers',
    category: 'Shoes',
    price: 1799,
    imageUrl: 'https://images.unsplash.com/photo-1549298916-b41d501d3772?w=400',
  ),
  Product(
    id: 7,
    name: 'Hoodie',
    category: 'Clothing',
    price: 899,
    imageUrl: 'https://images.unsplash.com/photo-1556821840-3a63f15732ce?w=400',
  ),
  Product(
    id: 8,
    name: 'Handbag',
    category: 'Bags',
    price: 1499,
    imageUrl: 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?w=400',
  ),
];