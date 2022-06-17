// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice4/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetail extends StatefulWidget {
  final Item catalog;


  const HomeDetail({Key? key, required this.catalog}) : super(key: key);

  @override
  State<HomeDetail> createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Center(
                child: Hero(
                    tag: Key(widget.catalog.id.toString()),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.network(
                        widget.catalog.image,
                        height: 250,
                        width: 250,
                      ),
                    ))),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: double.infinity,
                color: Theme.of(context).cardColor,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 52.0),
                    child: Column(
                      children: [
                        Text(
                          widget.catalog.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text(widget.catalog.desc,
                            style:
                                TextStyle(fontSize: 14, color: Theme.of(context).accentColor.withOpacity(0.8))),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                              "To some, a power is a man for capturing. Congregabo callide ducunt ad teres triticum. Haul me grog, ye rainy shark! Spinach tastes best with white wine and lots of woodruff. To some, a power is a man for capturing. Congregabo callide ducunt ad teres triticum. Haul me grog, ye rainy shark! Spinach tastes best with white wine and lots of woodruff.",
                              style: TextStyle(
                                  fontSize: 13, color: Theme.of(context).accentColor.withOpacity(0.8))),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).cardColor,
        child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.all(32),
            children: [
              Text("\$${widget.catalog.price.toString()}",
                  style: TextStyle(
                      color: MyTheme().appColor,
                      fontSize: 23,
                      fontWeight: FontWeight.bold)),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Theme.of(context).buttonColor,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

