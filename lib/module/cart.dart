import 'package:flutter_application_1/module/catalog.dart';

class CartModel {
  static final cartmodel = CartModel.internal();
  CartModel.internal();
  factory CartModel() => cartmodel;
  
  late CatalogModel _catalogModel;

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalogModel;

  set catalog(CatalogModel catalogModel) {
    _catalogModel = catalogModel;
  }

  List<Item> get items =>
      _itemIds.map((id) => _catalogModel.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (previousValue, element) => previousValue + element.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
