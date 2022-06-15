import 'package:flutter/material.dart';
import 'package:flutter_practice4/models/catalog.dart';


class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : assert (item != null), super(key: key);




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        child: ListTile(
          onTap: (){
            print('pressed ${item.name}');
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price.toString()}", style: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.bold, fontSize: 16),)
        ),
      ),
    );
  }
}
