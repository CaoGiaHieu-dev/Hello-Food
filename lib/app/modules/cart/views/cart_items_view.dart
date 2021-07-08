import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/cart/controllers/cart_controller.dart';

class CartItemsView extends GetView<CartController> {
  const CartItemsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      'Your Food Cart'
          .text
          .textStyle(context.bodyText1.copyWith(
            color: Vx.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ))
          .make(),
      const _Items(),
      const _Items(),
      TextFormField(
        decoration: const InputDecoration(
          fillColor: Vx.white,
          filled: true,
          suffixIcon: Icon(
            FontAwesomeIcons.tag,
            color: Vx.red500,
          ),
          hintText: 'Add Your Promo Code',
          border: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Vx.gray300,
              width: 1,
            ),
          ),
        ),
      ).pSymmetric(v: 10),
      <Widget>[
        const _PriceItem(
          title: 'ic_popular_food_1',
          price: '192',
        ),
        const _PriceItem(
          title: 'ic_popular_food_1',
          price: '192',
        ),
        <Widget>[
          'Total'
              .text
              .textStyle(context.bodyText1.copyWith(
                color: Vx.black,
                fontWeight: FontWeight.bold,
              ))
              .make(),
          r'$192'
              .text
              .textStyle(context.bodyText1.copyWith(
                color: Vx.black,
                fontWeight: FontWeight.bold,
              ))
              .make(),
        ]
            .hStack(alignment: MainAxisAlignment.spaceBetween)
            .pSymmetric(v: 10, h: 20),
      ]
          .vStack(crossAlignment: CrossAxisAlignment.stretch)
          .pSymmetric(v: 10)
          .card
          .make()
          .backgroundColor(Vx.orange100),
      'Payment Method'
          .text
          .textStyle(context.bodyText1.copyWith(
            color: Vx.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ))
          .make()
          .pSymmetric(v: 10),
      <Widget>[
        Image.asset(
          'assets/icons/ic_credit_card.png',
          height: 30,
        ),
        10.widthBox,
        'Credit/Debit Card'.text.textStyle(context.bodyText1).make(),
      ]
          .hStack()
          .pSymmetric(h: 20, v: 10)
          .card
          .make()
          .backgroundColor(Vx.orange100)
    ].vStack(
        alignment: MainAxisAlignment.start,
        crossAlignment: CrossAxisAlignment.stretch);
  }
}

class _Items extends StatelessWidget {
  const _Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      Image.asset(
        'assets/popular_foods/ic_popular_food_1.png',
        height: context.heightScale / 20,
      ).p(20),
      <Widget>[
        <Widget>[
          <Widget>[
            'ic_popular_food_1'
                .text
                .textStyle(context.bodyText1.copyWith(
                  color: Vx.black,
                  fontWeight: FontWeight.w500,
                ))
                .make(),
            10.heightBox,
            r'$96.00'
                .text
                .textStyle(context.bodyText1.copyWith(
                  color: Vx.black,
                  fontWeight: FontWeight.w500,
                ))
                .make(),
          ].vStack(crossAlignment: CrossAxisAlignment.start),
          20.widthBox,
          Image.asset(
            'assets/icons/ic_delete.png',
            height: 30,
          ),
        ].hStack(
          crossAlignment: CrossAxisAlignment.center,
        ),
        10.heightBox,
        <Widget>[
          '-'
              .text
              .textStyle(
                context.bodyText1.copyWith(
                  color: Vx.black,
                  fontSize: 24,
                ),
              )
              .make()
              .onInkTap(() {}),
          'Add To 2'
              .text
              .textStyle(context.bodyText1.copyWith(
                color: Vx.gray300,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ))
              .make()
              .pSymmetric(v: 10, h: 15)
              .card
              .color(Vx.red500)
              .make()
              .pSymmetric(h: 20),
          '+'
              .text
              .textStyle(
                context.bodyText1.copyWith(
                  color: Vx.red500,
                  fontSize: 24,
                ),
              )
              .make()
              .onInkTap(() {}),
        ].hStack(alignment: MainAxisAlignment.center)
      ].vStack(),
    ].hStack().card.make().backgroundColor(Vx.orange100).pSymmetric(v: 10);
  }
}

class _PriceItem extends StatelessWidget {
  const _PriceItem({Key? key, required this.title, required this.price})
      : super(key: key);
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      title.text
          .textStyle(context.bodyText1.copyWith(
            color: Vx.black,
            fontWeight: FontWeight.w500,
          ))
          .make(),
      r'$' '$price'
          .text
          .textStyle(context.bodyText1.copyWith(
            color: Vx.black,
            fontWeight: FontWeight.w500,
          ))
          .make(),
    ]
        .hStack(alignment: MainAxisAlignment.spaceBetween)
        .pSymmetric(v: 10, h: 20);
  }
}
