import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of sales item

  final List _shopItem = [
    ["Chocolate", "30", "lib/images/chocolate.png", Colors.blue],
    ["Water", "20", "lib/images/water.png", Colors.deepPurple],
    ["Vegetables", "100", "lib/images/vegetables.png", Colors.orange],
    ["Chicken", "200", "lib/images/chicken.png", Colors.green],
  ];

  //list of cart items
  List _cartItems = [];

  get shopItem => _shopItem;
  get cartItem => _cartItems;

  // add items to cart
  void addItemCart(int index) {
    _cartItems.add(_shopItem[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String CalculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
