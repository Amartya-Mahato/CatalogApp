import 'package:flutter_application_1/module/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartModel {
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

}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store?.cartModel._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation(this.item);
  @override
  perform() {
    store?.cartModel._itemIds.remove(item.id);
  }
}
