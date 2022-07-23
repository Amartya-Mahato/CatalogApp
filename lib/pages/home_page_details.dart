import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Theme/theme.dart';
import 'package:flutter_application_1/widget/homePageWidgets/addToCartButton.dart';
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
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.canvasColor,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image)
                .box
                .roundedLg
                .height(120)
                .shadow2xl
                .make(),
          ).centered().pOnly(top: 16, right: 16, left: 16),
          Expanded(
            child: VxArc(
              height: 35,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.bold
                        .color(context.isDarkMode
                            ? MyTheme.creamColor
                            : MyTheme.darkBluishColor)
                        .uppercase
                        .xl3
                        .make()
                        .pOnly(top: 40),
                    catalog.desc.text
                        .color(MyTheme.textThemeColor)
                        .uppercase
                        .textStyle(context.captionStyle)
                        .xl
                        .make(),
                    SizedBox(
                      height: 20,
                    ),
                    "Souris l'amour dans qui corps et renversée, regard contemplons excitant parce et mettrait par fait, face nous décor fait mensonge. Femme gaze mensonge face morceau a musculeux ce m'enivre un, gaze souris apres-demain faudra somptueux divin et mince. Corps beauté vois voici musculeux. Tournons majesté tant surtout d'un demain et crispée exquise. Visage ou de d'un sournois langoureux. Long faite beauté la de divinement me. Encore beauté pleure-t-elle la yeux et grâces soeurs et m'appelle, le regard et doué ce les et, femme mal pour ou de le sincere, la long et apres-demain tout véritable que n'est pleure-t-elle, et comme."
                        .text
                        .center
                        .bold
                        .color(MyTheme.textThemeColor)
                        .make()
                        .px12(),
                    Spacer(),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "\$${catalog.price}"
                            .text
                            .bold
                            .color(catalog.price > 980
                                ? Colors.red.shade900
                                : Colors.green.shade900)
                            .xl2
                            .make(),
                        AddToCartButton(
                          catalog: catalog,
                        ),
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
