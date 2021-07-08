import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/home/controllers/home_controller.dart';

class HomeHeaderView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      <Widget>[
        'What would you like to eat?'
            .text
            .textStyle(context.bodyText1.copyWith(
              fontSize: 18,
            ))
            .make(),
        const Icon(Icons.notifications_none)
      ]
          .hStack(alignment: MainAxisAlignment.spaceBetween)
          .pSymmetric(v: 20, h: 20),
      TextFormField(
        decoration: const InputDecoration(
          suffixIcon: Icon(
            Icons.menu,
            color: Vx.red500,
          ),
          hintText: 'What would your like to buy?',
          prefixIcon: Icon(
            FontAwesomeIcons.search,
            color: Vx.red500,
          ),
          border: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Vx.gray300,
              width: 1,
            ),
          ),
        ),
      ).pOnly(bottom: 10, left: 20, right: 20),
      controller.swiperList
          .map((e) => <Widget>[
                Image.asset('assets/top_menus/ic_${e.toLowerCase()}.png')
                    .box
                    .color(Vx.white)
                    .margin(
                      const EdgeInsets.symmetric(horizontal: 20),
                    )
                    .padding(const EdgeInsets.all(10))
                    .make(),
                e.replaceAll(RegExp(r'_'), ' ').text.make()
              ].vStack(alignment: MainAxisAlignment.spaceEvenly))
          .toList()
          .swiper(
            autoPlay: false,
            aspectRatio: 16 / 4,
            viewportFraction: 0.2,
          )
          .box
          .withDecoration(
            const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Vx.pink100,
                  Vx.white,
                ],
              ),
            ),
          )
          .make()
    ].vStack(
      crossAlignment: CrossAxisAlignment.stretch,
    );
  }
}
