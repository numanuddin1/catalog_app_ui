// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice4/models/catalog.dart';
import 'package:flutter_practice4/utils/routes.dart';
import 'package:flutter_practice4/utils/themes.dart';

import '../widgets/catalog_header.dart';
import '../widgets/catalog_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {





  loadData() async {
    var catalogJson = await rootBundle.loadString('assets/files/catalog.json');
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        child: Icon(CupertinoIcons.cart, color: Colors.white,),
      ),
      backgroundColor: MyTheme().creamColor,

      body: SafeArea(
        bottom: false,
        child: Container(
          padding: EdgeInsets.all(28),
          margin: EdgeInsets.only(bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              Padding(
                padding: EdgeInsets.only(top: 08, bottom: 3),
              ),
              if(CatalogModel.items.isNotEmpty)
              Expanded(child: CatalogList())
              else
                Expanded(child: Center(child: CircularProgressIndicator())),
            ],
          ),
        ),
      ),
    );
  }
}


