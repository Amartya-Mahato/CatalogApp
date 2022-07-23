import 'package:flutter/material.dart';
import 'package:flutter_application_1/module/cart.dart';
import 'package:flutter_application_1/module/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCartButton extends StatefulWidget {
  final catalog;
  const AddToCartButton({
    Key? key,
    this.catalog,
  }) : super(key: key);

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  final _cartmodel = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isAdded = _cartmodel.items.contains(widget.catalog) ? true : false;
    return ElevatedButton(
        onPressed: () {
          if (!isAdded) {
            isAdded = isAdded.toggle();

            final _catalogmodel = CatalogModel();
            _cartmodel.catalog = _catalogmodel;
            _cartmodel.add(widget.catalog);
            setState(() {});
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.backgroundColor),
            shape: MaterialStateProperty.all(StadiumBorder()),
            maximumSize: MaterialStateProperty.all(const Size(120, 40))),
        child: isAdded
            ? Icon(Icons.done).iconColor(Colors.white)
            : "Add to cart".text.color(Colors.white).make());
  }
}
