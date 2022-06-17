// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';
import '../models/catalog.dart';
import '../screens/home_detail.dart';
import '../utils/themes.dart';

class CatalogItem extends StatefulWidget {
  final Item catalog;
  const CatalogItem({required this.catalog, Key? key}) : super(key: key);

  @override
  State<CatalogItem> createState() => _CatalogItemState();
}

class _CatalogItemState extends State<CatalogItem> {
  MediaQueryData get mq => MediaQuery.of(context);

  /// Get MediaQuery Screen Size
  Size get screenSize => mq.size;

  /// Get MediaQuery Screen Density
  double get screenDensity => mq.devicePixelRatio;

  /// Get MediaQuery Screen Padding
  EdgeInsets get screenPadding => mq.padding;

  /// Get MediaQuery Screen Width
  double get screenWidth => mq.size.width;

  /// Get MediaQuery Screen Height
  double get screenHeight => mq.size.height;

  /// Get MediaQuery Screen Width in percentage
  double get percentWidth => screenWidth / 100;

  /// Get MediaQuery Screen height in percentage
  double get percentHeight => screenHeight / 100;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetail(catalog: widget.catalog),
            )),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).cardColor,
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Hero(
                tag: Key(widget.catalog.id.toString()),
                child: Container(
                  width: context.percentWidth * 30,
                  height: 150,
                  padding: EdgeInsets.all(04),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).canvasColor,
                  ),
                  child: Image.network(widget.catalog.image),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.catalog.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(widget.catalog.desc,
                        style: TextStyle(fontSize: 12, color: Theme.of(context).accentColor.withOpacity(0.8))),
                    SizedBox(
                      height: 16,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.zero,
                      children: [
                        Text("\$${widget.catalog.price.toString()}",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        _AddCart(catalog: widget.catalog,),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   child: Text("Add to Cart"),
                        //   style: ButtonStyle(
                        //       backgroundColor:
                        //       MaterialStateProperty.all(MyTheme().appColor),
                        //       shape: MaterialStateProperty.all(StadiumBorder())
                        //   ),
                        // )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
          height: 150,
          width: 100,
        ));
  }
}

class _AddCart extends StatefulWidget {
  final Item catalog;
  const _AddCart({
    Key? key, required this.catalog,
  }) : super(key: key);

  @override
  State<_AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<_AddCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final _catalogModel = CatalogModel();
        final _cart = CartModel();
        _cart.catalog = _catalogModel;
        _cart.add(widget.catalog);
        print(widget.catalog.name);
        isAdded = isAdded.toggle();

        setState((){});
      },
      child: Container(
        child: Padding(
          padding:  EdgeInsets.symmetric(
              vertical: 4.0, horizontal: 9),
          child: isAdded? Icon(Icons.done) : Text(
            'Add to Cart',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 12),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Theme.of(context).buttonColor,
        ),
      ),
    );
  }
}
