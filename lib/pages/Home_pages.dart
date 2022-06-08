import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widget/drawer.dart';
import 'dart:convert';

import '../module/catalog.dart';
import '../widget/itemWidget.dart';

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
      appBar: AppBar(
        title: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Catalog App",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: (CatalogModel.item!=null && CatalogModel.item.isNotEmpty) ? ListView.builder(
          itemCount: CatalogModel.item.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.item[index],
            );
          },
        ) 
        : Center(
          child: CircularProgressIndicator(color: Colors.red,),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
