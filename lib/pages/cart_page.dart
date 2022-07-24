import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/module/cart.dart';
import 'package:flutter_application_1/module/catalog.dart';
import 'package:flutter_application_1/widget/Theme/theme.dart';
import 'package:flutter_application_1/widget/homePageWidgets/catalogImage.dart';
import 'package:flutter_application_1/widget/homePageWidgets/catalogItem.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Cart"
            .text
            .bold
            .xl4
            .color(context.isDarkMode
                ? MyTheme.creamColor
                : MyTheme.darkBluishColor)
            .make()
            .box
            .alignCenterRight
            .make(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          _CartList().pOnly(left: 16, right: 16).expand(),
          Divider(
            color: context.backgroundColor,
            thickness: 3,
          ),
          _CardTotal(),
        ],
      ),
    );
  }
}

class _CardTotal extends StatelessWidget {
  final CartModel _cart = (VxState.store as MyStore).cartModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 90,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          VxBuilder(
            mutations: {RemoveMutation},
            builder: (context, _, vxstatus) {
              return "\$${_cart.totalPrice}"
                  .text
                  .bold
                  .xl2
                  .color(Colors.pink)
                  .make();
            },
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "This feature will be suppported soon"
                    .text
                    .bold
                    .center
                    .capitalize
                    .color(Colors.white)
                    .make(),
                backgroundColor: Colors.black,
              ));
            },
            child: "Buy".text.bold.color(Colors.white).make(),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(context.backgroundColor),
            ),
          ).w32(context),
        ]).pOnly(right: 20,left: 20,bottom: 40));
  }
}

class _CartList extends StatelessWidget {
  final CartModel _cart = (VxState.store as MyStore).cartModel;
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    return ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(
                Icons.done,
                color: Colors.green,
              ),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {
                  RemoveMutation(_cart.items[index]);
                  _CardTotal();
                  // setState(() {});
                },
              ),
              title: _cart.items[index].name.text
                  .color(context.isDarkMode
                      ? MyTheme.creamColor
                      : MyTheme.darkBluishColor)
                  .make(),
            ));
  }
}
