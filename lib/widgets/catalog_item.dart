// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';
import '../models/catalog.dart';
import '../screens/home_detail.dart';
import '../utils/themes.dart';
import 'add_to_cart.dart';

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
    var children2 = [
              Hero(
                tag: Key(widget.catalog.id.toString()),
                child: Container(
                  width: context.isMobile? context.percentWidth * 30 : context.percentWidth * 40,
                  height: context.isMobile? context.percentHeight * 20: context.percentHeight * 30,
                  padding: EdgeInsets.all(04),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).canvasColor,
                  ),
                  child: Image.network(widget.catalog.image,),
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
                        AddCart(catalog: widget.catalog,),
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
            ];
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
          child: context.isMobile? Row(
            children: children2,
          ): Column(
            children: children2,
          ),
          height: context.isMobile? context.percentHeight * 20 : context.percentHeight * 100,
        ));
  }
}
