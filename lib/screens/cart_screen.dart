import 'package:flutter/material.dart';
import '../models/product_model.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cartItems;
  const CartScreen({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    final total = cartItems.fold(0.0, (sum, item) => sum + item.price);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart (${cartItems.length})'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: cartItems.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('Your cart is empty!',
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
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
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Total:',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('₹${total.toStringAsFixed(0)}',
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}