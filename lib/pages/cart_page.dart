import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Theme/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          "\$9999".text.bold.xl2.color(Colors.pink).make(),
          Spacer(),
          ElevatedButton(
            onPressed: () => print("cart"),
            child: "Buy".text.bold.color(Colors.white).make(),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(context.backgroundColor),
            ),
          ).w32(context),
        ]).p12());
  }
}

class _CartList extends StatefulWidget {
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(
                Icons.done,
                color: Colors.green,
              ),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {},
              ),
              title: "Item 1"
                  .text
                  .color(context.isDarkMode
                      ? MyTheme.creamColor
                      : MyTheme.darkBluishColor)
                  .make(),
            ));
  }
}
