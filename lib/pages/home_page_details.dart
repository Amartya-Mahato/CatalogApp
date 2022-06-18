import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Theme/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import '../module/catalog.dart';

class HomePageDetails extends StatelessWidget {
  final Item catalog;
  const HomePageDetails({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child:
                Image.network(catalog.image).box.height(200).shadow2xl.make(),
          ).centered().pOnly(top: 16, right: 16, left: 16),
          Expanded(
            child: VxArc(
              height: 30,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.bold.uppercase.xl3.make().pOnly(top: 40),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    Spacer(),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "\$${catalog.price}".text.bold.xl2.make(),
                        ElevatedButton(
                            onPressed: () => print("gamer"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  MyTheme.darkBluishColor),
                              shape: MaterialStateProperty.all(StadiumBorder()),
                            ),
                            child: "Buy".text.bold.make())
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
