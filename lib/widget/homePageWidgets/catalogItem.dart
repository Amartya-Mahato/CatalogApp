import 'package:flutter/material.dart';
import 'package:flutter_application_1/module/cart.dart';
import 'package:flutter_application_1/widget/homePageWidgets/catalogImage.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../module/catalog.dart';
import '../../pages/home_page_details.dart';
import '../Theme/theme.dart';
import 'addToCartButton.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomePageDetails(catalog: catalog)));
                
      },
      child: VxBox(
        child: Row(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(
                catalog: catalog,
              ),
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catalog.name.text.uppercase.xl.bold
                        .color(context.isDarkMode
                            ? MyTheme.creamColor
                            : MyTheme.darkBluishColor)
                        .make(),
                    catalog.desc.text
                        .color(MyTheme.textThemeColor)
                        .textStyle(context.captionStyle)
                        .make(),
                    SizedBox(
                      height: 5,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "\$${catalog.price}"
                            .text
                            .color(catalog.price > 980
                                ? Colors.red.shade900
                                : Colors.green.shade900)
                            .bold
                            .xl
                            .make(),
                        AddToCartButton(
                          catalog: catalog,
                        )
                      ],
                    ).pOnly(right: 4.0),
                  ]),
            ),
          ],
        ),
      ).color(context.cardColor).roundedLg.square(139).shadowXs.make(),
    ).pOnly(left: 10, right: 10, top: 10, bottom: 10);
  }
}
