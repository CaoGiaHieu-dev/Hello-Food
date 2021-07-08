import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:training/app/modules/home/controllers/home_controller.dart';

class HomeBodyView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      const _PopluarFoods(),
      const _BestFoods(),
    ].vStack(
      crossAlignment: CrossAxisAlignment.stretch,
    );
  }
}

class _PopluarFoods extends StatelessWidget {
  const _PopluarFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      <Widget>[
        'Popluar Foods'
            .text
            .textStyle(
              context.bodyText1.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            )
            .make(),
        'See all'
            .text
            .textStyle(
              context.bodyText1.copyWith(
                fontSize: 18,
                color: Vx.blue400,
                fontWeight: FontWeight.normal,
              ),
            )
            .make()
            .onInkTap(() {})
      ]
          .hStack(
            alignment: MainAxisAlignment.spaceBetween,
          )
          .w(context.screenWidth)
          .pSymmetric(h: 10, v: 20),
      List<Widget>.generate(
        5,
        (index) => <Widget>[
          <Widget>[
            Image.asset(
              'assets/popular_foods/ic_popular_food_${index + 1}.png',
              fit: BoxFit.fill,
            ).h(double.infinity),
            const Icon(
              Icons.favorite,
              color: Vx.red500,
            ).onInkTap(() {}).positioned(top: 10, right: 0)
          ].zStack(alignment: Alignment.center).expand(flex: 12),
          <Widget>[
            'ic_popular_food_${index + 1}'
                .text
                .textStyle(context.bodyText2.copyWith(
                  color: Vx.black,
                  fontSize: 16,
                ))
                .make(),
            const Icon(
              FontAwesomeIcons.locationArrow,
              size: 15,
              color: Vx.red500,
            ).onInkTap(() {})
          ].hStack(alignment: MainAxisAlignment.spaceBetween).expand(flex: 2),
          <Widget>[
            <Widget>[
              '4.9'
                  .text
                  .textStyle(context.bodyText2.copyWith(
                    color: Vx.black,
                    fontSize: 12,
                  ))
                  .make(),
              VxRating(
                isSelectable: false,
                size: 15,
                value: 8.5,
                onRatingUpdate: (value) {},
                count: 5,
                selectionColor: Vx.red500,
              ),
              '(200)'
                  .text
                  .textStyle(context.bodyText2.copyWith(
                    color: Vx.black,
                    fontSize: 12,
                  ))
                  .make(),
            ].hStack(alignment: MainAxisAlignment.spaceEvenly),
            r'$15.06'
                .text
                .textStyle(context.bodyText1.copyWith(
                  color: Vx.black,
                  fontSize: 14,
                ))
                .make(),
          ]
              .hStack(
                alignment: MainAxisAlignment.spaceBetween,
                crossAlignment: CrossAxisAlignment.start,
              )
              .expand(flex: 2),
        ]
            .vStack(
              crossAlignment: CrossAxisAlignment.stretch,
              alignment: MainAxisAlignment.start,
            )
            .w(context.widthScale / 2)
            .pSymmetric(h: 10)
            .card
            .color(Vx.white)
            .make()
            .pSymmetric(h: 10)
            .onInkTap(() {
          Get.toNamed(
            Routes.DETAIL,
            arguments: <String, dynamic>{
              'assetImage':
                  'assets/popular_foods/ic_popular_food_${index + 1}.png',
              'name': 'ic_popular_food_${index + 1}'
            },
          );
        }),
      ).hStack().scrollHorizontal().h(context.heightScale / 3).pSymmetric(h: 10)
    ].vStack();
  }
}

class _BestFoods extends StatelessWidget {
  const _BestFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      'Best Foods'
          .text
          .textStyle(
            context.bodyText1.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          )
          .make()
          .pSymmetric(h: 10, v: 20),
      List<Widget>.generate(
        9,
        (index) => Image.asset(
          'assets/best_foods/ic_best_food_${index + 1}.jpeg',
          fit: BoxFit.fill,
        )
            .card
            .withRounded()
            .make()
            .w(double.infinity)
            .pSymmetric(h: 10)
            .onInkTap(() {
          Get.toNamed(
            Routes.DETAIL,
            arguments: <String, dynamic>{
              'assetImage': 'assets/best_foods/ic_best_food_${index + 1}.jpeg',
              'name': 'ic_best_food_${index + 1}'
            },
          );
        }),
      ).swiper(
        enlargeCenterPage: true,
        aspectRatio: 4 / 3,
        viewportFraction: 1.0,
      )
    ].vStack(crossAlignment: CrossAxisAlignment.stretch);
  }
}
