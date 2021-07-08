import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/detail/controllers/detail_controller.dart';

class DetailHeaderView extends GetView<DetailController> {
  const DetailHeaderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      Image.asset(
        controller.image,
        fit: BoxFit.fill,
      )
          .card
          .make()
          .wh(context.widthScale, context.heightScale / 3)
          .pSymmetric(v: 10),
      <Widget>[
        controller.name.text
            .textStyle(
              context.bodyText1.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
            .make(),
        r'$96.00'
            .text
            .textStyle(
              context.bodyText1.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
            .make()
      ].hStack(alignment: MainAxisAlignment.spaceBetween),
      RichText(
        text: TextSpan(
          style: context.bodyText1.copyWith(),
          children: <InlineSpan>[
            TextSpan(
                text: 'by ',
                style: context.bodyText2.copyWith(color: Vx.gray400)),
            TextSpan(
                text: 'pizza hut',
                style: context.bodyText1.copyWith(
                  color: Vx.black,
                )),
          ],
        ),
      ).pSymmetric(v: 10),
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
        'Add To Bag'
            .text
            .textStyle(context.bodyText1.copyWith(
              color: Vx.white,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ))
            .make()
            .pSymmetric(v: 10, h: 50)
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
    ]
        .vStack(
          crossAlignment: CrossAxisAlignment.stretch,
        )
        .w(context.widthScale)
        .pSymmetric(h: 20);
  }
}
