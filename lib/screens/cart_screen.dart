import 'package:flutter/material.dart';
import 'package:flutter_practice4/utils/themes.dart';

class CartSreen extends StatelessWidget {
  const CartSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme().creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart', style: TextStyle(color: Colors.black),),

      ),
    );
  }
}
