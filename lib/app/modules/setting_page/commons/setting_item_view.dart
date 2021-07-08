import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';

class SettingItemView extends GetView {
  const SettingItemView({
    Key? key,
    this.icon,
    this.title,
    this.checkedColor,
    this.onTap,
    this.titleStyle,
    this.leading,
    this.isChecked = false,
  }) : super(key: key);
  final IconData? icon;
  final String? title;
  final Function()? onTap;
  final bool isChecked;
  final Widget? leading;
  final TextStyle? titleStyle;
  final Color? checkedColor;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      <Widget>[
        <Widget>[
          leading ?? const SizedBox(),
          10.widthBox,
          (title ?? '')
              .text
              .textStyle(titleStyle ??
                  context.bodyText1
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold))
              .make(),
        ].hStack(),
        if (isChecked)
          Icon(
            Icons.check,
            color: checkedColor ?? Vx.black,
          ),
      ].hStack(alignment: MainAxisAlignment.spaceBetween).p(20),
      const VxDivider(
        width: 1.5,
      ).pOnly(left: 20),
    ].vStack(crossAlignment: CrossAxisAlignment.stretch);
  }
}
