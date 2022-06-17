import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../module/catalog.dart';
import '../widget/cataloglist.dart';

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
    await Future.delayed(Duration(seconds: 5));
    var catalogJson = await rootBundle.loadString("lib/module/Items.json");
    // print(catalogJson);
    var decodedData = jsonDecode(catalogJson);
    // print(decodedData);
    var productsData = decodedData["products"];
    // print(productsData);
    CatalogModel.item = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(50, ((index) => CatalogModel.item[0]));
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.item != null && CatalogModel.item.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      'Catalog App'.text.xl3.bold.color(MyTheme.darkBluishColor).make(),
      'Trending Products'.text.textStyle(context.captionStyle).xl.color(MyTheme.darkBluishColor).make(),
    ]);
  }
}
