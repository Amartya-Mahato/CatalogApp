import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widget/Theme/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../module/catalog.dart';
import '../widget/homePageWidgets/bottomNavigationBarRow.dart';
import '../widget/homePageWidgets/cataloglist.dart';

class Home_pages extends StatefulWidget {
  @override
  _Home_pagesState createState() => _Home_pagesState();
}

class _Home_pagesState extends State<Home_pages> {
  // const _Home_pagesState(Key? key) : super(key: key);
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(Duration(seconds: 2));

    var catalogJson = await rootBundle.loadString("lib/module/Items.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];

    CatalogModel.item = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(50, ((index) => CatalogModel.item[0]));
    return Scaffold(
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Container(
          padding: Vx.mOnly(right: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              SizedBox(
                height: 10,
              ),
              if (CatalogModel.item != null && CatalogModel.item.isNotEmpty)
                CatalogList().expand()
              else
                CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Bottombar(),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      'Catalog App'
          .text
          .xl3
          .bold
          .color(
              context.isDarkMode ? MyTheme.creamColor : MyTheme.darkBluishColor)
          .make(),
      'Trending Products'
          .text
          .color(MyTheme.textThemeColor)
          .textStyle(context.captionStyle)
          .xl
          .make(),
    ]);
  }
}
