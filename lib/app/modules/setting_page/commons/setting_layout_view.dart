import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';

class SettingLayoutView extends GetView {
  const SettingLayoutView({
    Key? key,
    this.appBarColor,
    this.actionTitle,
    this.appBarTitleColor,
    this.title,
    this.appBarLeadingColor,
    this.actionColor,
    required this.child,
  }) : super(key: key);
  final Widget child;
  final String? title;
  final Color? appBarColor;
  final Color? appBarTitleColor;
  final Color? appBarLeadingColor;
  final String? actionTitle;
  final Color? actionColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.white,
      appBar: VxAppBar(
        backgroundColor: appBarColor,
        elevation: appBarColor != null ? 0 : null,
        leading: Icon(
          Icons.close,
          color: appBarLeadingColor,
        ).onInkTap(() {
          Get.back();
        }),
        title: (title ?? '')
            .text
            .textStyle(context.headline6.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: appBarTitleColor,
            ))
            .make(),
      ),
      body: <Widget>[
        child.expand(),
        20.heightBox,
        (actionTitle ?? '')
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
            .height(context.heightScale / 20)
            .withDecoration(
              BoxDecoration(
                color: actionColor ?? Vx.blue500,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Vx.gray400,
                    blurRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            )
            .margin(const EdgeInsets.only(bottom: 20, left: 20, right: 20))
            .make()
            .onInkTap(() {}),
      ].vStack().safeArea(),
    );
  }
}
