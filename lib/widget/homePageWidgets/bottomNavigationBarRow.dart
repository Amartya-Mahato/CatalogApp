import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Routes/routes.dart';
import 'package:flutter_application_1/widget/Theme/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class Bottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          children: [
            Spacer(),
            SizedBox(
              height: 45,
              width: 45,
              child: InkWell(
                  onTap: () => Navigator.pushNamed(context, Routes.cartRoute),
                  child: Icon(CupertinoIcons.cart_fill_badge_plus)
                      .iconColor(Colors.white)),
            ).card.color(context.backgroundColor).make(),
            Spacer(),
          ],
        ));
  }
}
