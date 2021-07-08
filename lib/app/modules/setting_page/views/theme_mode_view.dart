import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';

class ThemeModeView extends GetView {
  const ThemeModeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(24.0, 30.0, 24.0, 24.0),
      backgroundColor: Vx.white,
      content: <Widget>[
        <Widget>[
          'Chế độ tối'
              .text
              .textStyle(context.bodyText1.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ))
              .make(),
          const Icon(Icons.close).onInkTap(() {
            Get.back();
          })
        ].hStack(alignment: MainAxisAlignment.spaceBetween).expand(flex: 2),
        <String>['Theo hệ thống', 'Luôn luôn', 'Luôn luôn tắt']
            .map((e) => _ThemeModeViewItem(
                  title: e,
                  isChecked: e == 'Theo hệ thống',
                ))
            .toList()
            .vStack(
                alignment: MainAxisAlignment.center,
                crossAlignment: CrossAxisAlignment.stretch)
            .scrollVertical()
            .pSymmetric(h: 20)
            .expand(flex: 5),
        'Áp dụng'
            .text
            .textStyle(
              context.bodyText1.copyWith(
                color: Vx.white,
                fontWeight: FontWeight.bold,
              ),
            )
            .make()
            .box
            .alignCenter
            .withDecoration(
              const BoxDecoration(
                color: Vx.green500,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Vx.gray400,
                    blurRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            )
            .make()
            .onInkTap(() {})
            .expand(),
      ]
          .vStack(
            crossAlignment: CrossAxisAlignment.stretch,
            alignment: MainAxisAlignment.spaceEvenly,
          )
          .wh(context.widthScale * 2 / 3, context.heightScale * 2 / 5),
    );
  }
}

class _ThemeModeViewItem extends StatelessWidget {
  const _ThemeModeViewItem(
      {Key? key, required this.title, required this.isChecked})
      : super(key: key);
  final String title;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      title.text
          .textStyle(
            context.bodyText1.copyWith(
              color: Vx.black,
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          )
          .make(),
      Icon(
        isChecked ? Icons.check_box : FontAwesomeIcons.square,
        color: isChecked ? Vx.orange500 : Vx.black,
        size: isChecked ? 30 : 25,
      ),
    ].hStack(alignment: MainAxisAlignment.spaceBetween).pSymmetric(v: 20);
  }
}
