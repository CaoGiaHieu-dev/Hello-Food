import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';

import '../controllers/cart_controller.dart';
import 'cart_items_view.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.gray100,
      appBar: VxAppBar(
        title: 'Items Carts'
            .text
            .textStyle(
              context.bodyText1.copyWith(
                color: Vx.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
            .make(),
        backgroundColor: Vx.gray100,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Vx.black,
        ).onInkTap(() {
          Get.back();
        }),
        actions: <Widget>[
          <Widget>[
            const Icon(
              FontAwesomeIcons.briefcase,
              color: Vx.black,
            ),
            '3'
                .text
                .red500
                .makeCentered()
                .circle(backgroundColor: Vx.white)
                .wh(15, 15)
                .positioned(top: 10, right: 0),
          ].zStack(alignment: Alignment.center).pSymmetric(h: 20),
        ],
      ),
      body: <Widget>[
        const CartItemsView(),
      ].vStack().scrollVertical().pSymmetric(h: 20).safeArea(),
    );
  }
}
