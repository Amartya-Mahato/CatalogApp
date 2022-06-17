import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/theme.dart';

import 'package:velocity_x/velocity_x.dart';

import '../module/catalog.dart';

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

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(image: catalog.image),
          Expanded(            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  catalog.name.text.uppercase.lg.bold.color(MyTheme.darkBluishColor).make(),
                  catalog.desc.text.textStyle(context.captionStyle).make(),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    
                    // buttonPadding: Vx.mOnly(right: 20),
                    children: [
                      "\$${catalog.price}".text.bold.xl.make(),
                      
                      ElevatedButton(
                        onPressed: () => print("gamer"), 
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                          shape: MaterialStateProperty.all(StadiumBorder()),
                        ),
                        child: "Buy".text.make())
                    ],
                  ).pOnly(right: 8.0),
            ]),
          ),
        ],
      ),
    ).white.roundedSM.square(140).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Image.network(image)
            .box
            .roundedSM
            .p4
            .color(MyTheme.creamColor)
            .make()
            .wh32(context));
  }
}
