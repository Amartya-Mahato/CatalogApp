import 'package:flutter/material.dart';

import '../../module/catalog.dart';
import 'catalogItem.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.item.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.item[index];
          return CatalogItem(catalog: catalog);
        });
  }
}



