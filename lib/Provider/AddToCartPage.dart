import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:preetykart/Provider/CartProvider.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Added to Cart"),
        centerTitle: true,
      ),

      body: cartProvider.cartItems.isEmpty
          ? const Center(child: Text("Your cart is empty"))
          : ListView.builder(
              itemCount: cartProvider.cartItems.length,
              itemBuilder: (context, index) {
                final product = cartProvider.cartItems[index];
                return ListTile(
                  leading: Image.asset(product.image, width: 50),
                  title: Text(product.title),
                  subtitle: Text("\$${product.price}"),
                );
              },
            ),
    );
  }
}
