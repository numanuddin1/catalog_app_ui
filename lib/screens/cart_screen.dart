// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_practice4/models/cart.dart';
import 'package:flutter_practice4/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartSreen extends StatelessWidget {
  const CartSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Cart',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CartList(),
              ),
            ),
            Divider(),
            CartTotal(),
          ],
        ),
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '\$${_cart.totalPrice}',
            style: TextStyle(fontSize: 22),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).buttonColor)),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Theme.of(context).canvasColor,
                  content: Text(
                    'Buying not Supported yet',
                    style: TextStyle(color: Colors.red),
                  )));
            },
            child: Text(
              'Buy',
              style: TextStyle(color: Colors.white),
            ),
          ).w32(context),
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return _cart.items.isEmpty
        ? Center(child: Text('Nothing to Show'))
        : ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              title: Text(_cart.items[index].name),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {
                  _cart.remove(_cart.items[index]);
                  setState(() {

                  });
                },
              ),
            ),
            itemCount: _cart.items.length,
          );
  }
}
