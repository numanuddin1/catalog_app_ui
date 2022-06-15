// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/catalog.dart';
import '../screens/home_detail.dart';
import '../utils/themes.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({required this.catalog, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetail(catalog: catalog),
            )),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Container(
                  width: 120,
                  height: 150,
                  padding: EdgeInsets.all(04),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyTheme().creamColor,
                  ),
                  child: Image.network(catalog.image),
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
                      catalog.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(catalog.desc,
                        style: TextStyle(fontSize: 12, color: Colors.black54)),
                    SizedBox(
                      height: 16,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.zero,
                      children: [
                        Text("\$${catalog.price.toString()}",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: Padding(
                              padding:  EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 9),
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: MyTheme().appColor,
                            ),
                          ),
                        ),
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
