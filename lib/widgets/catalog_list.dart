import 'package:flutter/material.dart';
import 'package:flutter_practice4/screens/home_detail.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';
import '../screens/home_screen.dart';
import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !context.isMobile
        ? GridView.builder(
            itemBuilder: (BuildContext context, int index) {
              final catalog = CatalogModel().getByPosition(index);
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CatalogItem(catalog: catalog),
              );
            },
            shrinkWrap: true,
            itemCount: CatalogModel.items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 45, mainAxisSpacing: 55),
          )
        : ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              final catalog = CatalogModel().getByPosition(index);
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CatalogItem(catalog: catalog),
              );
            },
            itemCount: CatalogModel.items.length,
          );
  }
}
