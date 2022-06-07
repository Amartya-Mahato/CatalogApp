import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/drawer.dart';

import '../module/catalog.dart';
import '../widget/itemWidget.dart';

class Home_pages extends StatelessWidget {
  const Home_pages(Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, ((index) => CatalogModel.item[0]));
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
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
