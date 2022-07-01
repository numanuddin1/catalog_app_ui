import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';
import '../models/catalog.dart';


class AddCart extends StatefulWidget {
  final Item catalog;
  const AddCart({
    Key? key, required this.catalog,
  }) : super(key: key);

  @override
  State<AddCart> createState() => AddCartState();
}

class AddCartState extends State<AddCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return InkWell(
      onTap: () {
        print(widget.catalog.name);


        if(!isInCart) {

          isInCart = isInCart.toggle();
          final _catalogModel = CatalogModel();
          _cart.catalog = _catalogModel;
          _cart.add(widget.catalog);


          setState(() {});
        }
      },
      child: Container(
        child: Padding(
          padding:  EdgeInsets.symmetric(
              vertical: 4.0, horizontal: 9),
          child: isInCart? Icon(Icons.done) : Icon(Icons.shopping_cart_outlined),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Theme.of(context).buttonColor,
        ),
      ),
    );
  }
}
