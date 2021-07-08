import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/setting_page/views/font_view.dart';
import 'package:training/app/modules/setting_page/views/language_view.dart';

import '../controllers/setting_page_controller.dart';
import 'theme_mode_view.dart';
import 'theme_view.dart';

class SettingPageView extends GetView<SettingPageController> {
  const SettingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.white,
      appBar: VxAppBar(
        title: 'Cài đặt'.text.textStyle(context.headline6.copyWith()).make(),
        elevation: 0,
        backgroundColor: Vx.white,
      ),
      body: <Widget>[
        _SettingPageItem(
          onTap: () {
            Get.to(() => const LanguageView());
          },
          icon: FontAwesomeIcons.globe,
          title: 'Ngôn ngữ',
          trailing: <Widget>[
            'Vietnamese'
                .text
                .textStyle(context.bodyText1.copyWith(
                  color: Vx.gray500,
                  fontWeight: FontWeight.normal,
                ))
                .make(),
            10.widthBox,
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Vx.black,
              size: 15,
            )
          ].hStack(),
        ),
        _SettingPageItem(
          onTap: () {
            Get.to(() => const ThemeView());
          },
          icon: FontAwesomeIcons.palette,
          title: 'Chủ dề',
          trailing: const Icon(
            FontAwesomeIcons.squareFull,
            color: Vx.red500,
          ),
        ),
        _SettingPageItem(
          onTap: () {
            Get.dialog(
              const ThemeModeView(),
            );
          },
          icon: FontAwesomeIcons.cloudMoon,
          title: 'Chế độ tối',
          trailing: <Widget>[
            'Theo hệ thống'
                .text
                .textStyle(context.bodyText1.copyWith(
                  color: Vx.gray500,
                  fontWeight: FontWeight.normal,
                ))
                .make(),
            10.widthBox,
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Vx.black,
              size: 15,
            )
          ].hStack(),
        ),
        _SettingPageItem(
          onTap: () {
            Get.to(() => const FontView());
          },
          icon: FontAwesomeIcons.font,
          leadingColorBorder: Vx.black,
          title: 'Font chữ',
          trailing: <Widget>[
            'ProximaNova'
                .text
                .textStyle(context.bodyText1.copyWith(
                  color: Vx.gray500,
                  fontWeight: FontWeight.normal,
                ))
                .make(),
            10.widthBox,
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Vx.black,
              size: 15,
            )
          ].hStack(),
        ),
        const _SettingPageItem(
          icon: FontAwesomeIcons.signOutAlt,
          title: 'Đăng xuất',
        )
      ].vStack(alignment: MainAxisAlignment.start).scrollVertical(),
    );
  }
}

class _SettingPageItem extends StatelessWidget {
  const _SettingPageItem({
    Key? key,
    this.icon,
    this.title,
    this.trailing,
    this.leadingColorBorder = Vx.white,
    this.onTap,
  }) : super(key: key);
  final IconData? icon;
  final String? title;
  final Widget? trailing;
  final Color leadingColorBorder;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      Icon(icon)
          .box
          .border(color: leadingColorBorder, width: 2)
          .make()
          .pSymmetric(h: 20),
      <Widget>[
        ListTile(
          onTap: onTap,
          title: (title ?? '')
              .text
              .textStyle(context.bodyText1
                  .copyWith(fontSize: 16, fontWeight: FontWeight.normal))
              .make(),
          trailing: trailing,
        ),
        const VxDivider(
          width: 1.5,
        ),
      ].vStack().expand(flex: 5)
    ].hStack();
  }
}
