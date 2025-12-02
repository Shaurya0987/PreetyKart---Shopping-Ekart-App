import 'package:flutter/material.dart';
import 'package:preetykart/modals/product.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> cartItems = [];

  int get count => cartItems.length;

  void addItem(Product product) {
    cartItems.add(product);
    notifyListeners();
  }

  void removeItem(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

  bool isInCart(Product product) {
    return cartItems.contains(product);
  }

  void toggleItem(Product product) {
    if (cartItems.contains(product)) {
      cartItems.remove(product);
    } else {
      cartItems.add(product);
    }
    notifyListeners();
  }

  void clearCart() {
    cartItems.clear();
    notifyListeners();
  }
}
