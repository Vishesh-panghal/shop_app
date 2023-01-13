import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final double price;

  final int quantity;
  CartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _item;
  Map<String, CartItem> get item {
    return {..._item};
  }

  void addItem(
    String productId,
    double price,
    String title,
  ) {
    if (_item.containsKey(productId)) {
      _item.update(
        productId,
        (value) => CartItem(
            id: value.id,
            title: title,
            quantity: value.quantity + 1,
            price: value.price),
      );
    } else {
      _item.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now.toString(),
              title: title,
              quantity: 1,
              price: price));
    }
  }
}
