import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catalog App",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        Text(
          "Trending Products",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black.withOpacity(0.8)),
        ),
      ],
    );
  }
}
