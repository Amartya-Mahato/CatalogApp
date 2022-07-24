import 'package:flutter_application_1/module/cart.dart';
import 'package:flutter_application_1/module/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late CatalogModel catalogModel;
  late CartModel cartModel;

  MyStore() {
    catalogModel = CatalogModel();
    cartModel = CartModel();
    cartModel.catalog = catalogModel;
  }
}
