//
import 'package:ecom/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get cart => _cart;
  int currentIndex = 1;

  // ignore: non_constant_identifier_names
  void add_to_fav(Product product) {
    // Find the index of the product in the cart
    int index = _cart.indexWhere((item) => item.title == product.title);

    // If the product is already in the cart, increment the quantity
    if (index != -1) {
      _cart[index].quantity++;
    } else {
      // If the product is not in the cart, add it with quantity 1
      product.quantity = 1;
      _cart.add(product);
    }

    notifyListeners();
  }

  increment_product(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  decrement_product(int index) {
    if (_cart[index].quantity <= 1) {
      _cart.removeAt(index);
    } else {
      _cart[index].quantity--;
    }
    notifyListeners();
  }

  totalPrice() {
    double myTotal = 0.0;
    for (Product element in _cart) {
      myTotal += element.price * element.quantity;
    }
    return myTotal;
  }

  static CartProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}
