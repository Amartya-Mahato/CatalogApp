import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../module/catalog.dart';
import '../Theme/theme.dart';

class CatalogImage extends StatefulWidget {
  final Item catalog;

  const CatalogImage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<CatalogImage> createState() => _CatalogImageState(catalog: catalog);
}

class _CatalogImageState extends State<CatalogImage> {
  final Item catalog;

  _CatalogImageState({required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Image.network(widget.catalog.image)
          .box
          .roundedSM
          .p4
          .color(context.canvasColor)
          .make()
          .wh24(context),
    );
  }
}
