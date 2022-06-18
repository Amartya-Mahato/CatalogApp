import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/homePageWidgets/catalogImage.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../module/catalog.dart';
import '../../pages/home_page_details.dart';
import '../Theme/theme.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePageDetails(catalog: catalog))),
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
                        .color(MyTheme.darkBluishColor)
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).make(),
                    SizedBox(
                      height: 5,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
    
                      children: [
                        "\$${catalog.price}".text.bold.xl.make(),
                        ElevatedButton(
                            onPressed: () => print("gamer"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  MyTheme.darkBluishColor),
                              shape: MaterialStateProperty.all(StadiumBorder()),
                            ),
                            child: "Buy".text.make())
                      ],
                    ).pOnly(right: 8.0),
                  ]),
            ),
          ],
        ),
      ).white.roundedSM.square(140).make().pOnly(left: 10,right: 10,top: 10,bottom: 10),
    );
  }
}
