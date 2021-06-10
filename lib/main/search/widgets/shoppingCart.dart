import 'package:flutter/material.dart';
import 'package:sinau/util/constants.dart';

class ShoppingCart extends StatefulWidget {
  final Function function;

  const ShoppingCart({Key key, this.function}) : super(key: key);
  @override
  _ShoppingCartState createState() => _ShoppingCartState(function);
}

class _ShoppingCartState extends State<ShoppingCart> {
  Function function;
  _ShoppingCartState(this.function);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.shopping_cart,
          color: Constants.notificationButtonColor,
        ),
        onPressed: function);
  }
}
