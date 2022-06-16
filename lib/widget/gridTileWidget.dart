import 'package:flutter/material.dart';

import '../module/catalog.dart';

class GridTileWiget extends StatefulWidget {
  final Item item;
  const GridTileWiget(BuildContext context, {Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  _GridTileWiget createState() => _GridTileWiget();
}

class _GridTileWiget extends State<GridTileWiget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shadowColor: Colors.deepPurple,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: GridTile(
        header: Container(
          // color: Colors.deepPurple
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10.0), bottom: Radius.circular(0)),
              color: Colors.deepPurple),
          child: Center(
              child: Text(
            widget.item.name.toUpperCase(),
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          )),
        ),
        child: Padding(
            padding: EdgeInsets.only(
              top: 25,
              bottom: 25,
            ),
            child: Image.network(
              widget.item.image,
            )),
        footer: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5, left: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.deepPurple,
                ),
                width: 80,
                height: 23,
                child: Center(
                  child: Text(
                    "\$${widget.item.price}",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 5, right: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.item.price <= 900 ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(3),
                ),
                width: 80,
                height: 23,
                child: InkWell(
                  borderRadius: BorderRadius.circular(3),
                  child: Center(
                    child: Text(
                      "Buy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
