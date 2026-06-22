import 'package:flutter/material.dart';
import '../models/product_model.dart';

class WishlistPage extends StatelessWidget {
  final List<Product> wishlistItems;
  const WishlistPage({super.key, required this.wishlistItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist (${wishlistItems.length})'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: wishlistItems.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('Your wishlist is empty!',
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
            )
          : ListView.builder(
              itemCount: wishlistItems.length,
              itemBuilder: (context, index) {
                final item = wishlistItems[index];
                return ListTile(
                  leading: ClipRRect(
  borderRadius: BorderRadius.circular(8),
  child: Image.network(
    item.imageUrl,
    width: 50,
    height: 50,
    fit: BoxFit.cover,
    errorBuilder: (context, error, stackTrace) =>
        const Icon(Icons.image_not_supported),
  ),
),
                  title: Text(item.name),
                  subtitle: Text(item.category),
                  trailing: Text('₹${item.price.toStringAsFixed(0)}',
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                );
              },
            ),
    );
  }
}