import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../module/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({
    Key? key,
    required this.item,
  })  : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        onTap: (() => {print("Amartya and Shivam")}),
        tileColor: Colors.white,
        leading: Image.network(item.image,),
        subtitle: Text(item.desc,textScaleFactor: 1.1,),
        title: Text(item.name,textScaleFactor: 1.5,),
        trailing: Text(
          "\$${item.price}",
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
