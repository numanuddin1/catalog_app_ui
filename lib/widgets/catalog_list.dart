import 'package:flutter/material.dart';
import 'package:flutter_practice4/screens/home_detail.dart';

import '../models/catalog.dart';
import '../screens/home_screen.dart';
import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final catalog = CatalogModel.items[index];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CatalogItem(catalog: catalog),
        );
      },
      itemCount: CatalogModel.items.length,
    );
  }
}
