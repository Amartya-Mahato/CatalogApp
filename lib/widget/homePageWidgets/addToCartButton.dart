import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/module/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCartButton extends StatelessWidget {
  final catalog;
  AddToCartButton({
    Key? key,
    this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation,RemoveMutation]);
    final CartModel _cartmodel = (VxState.store as MyStore).cartModel;
    bool isAdded = _cartmodel.items.contains(catalog) ? true : false;

    return ElevatedButton(
        onPressed: () {
          if (!isAdded) {
            AddMutation(catalog);
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.backgroundColor),
            shape: MaterialStateProperty.all(StadiumBorder()),
            maximumSize: MaterialStateProperty.all(const Size(120, 40))),
        child: isAdded
            ? Icon(Icons.done).iconColor(Colors.white)
            : Icon(Icons.add_shopping_cart_outlined).iconColor(Colors.white));
  }
}
