import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/setting_page/commons/setting_item_view.dart';
import 'package:training/app/modules/setting_page/commons/setting_layout_view.dart';

class ThemeView extends GetView {
  const ThemeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SettingLayoutView(
      appBarLeadingColor: Vx.black,
      title: 'Theme',
      actionTitle: 'Apply',
      actionColor: Vx.red500,
      appBarColor: Vx.white,
      child: <String>['Default', 'Green']
          .map(
            (e) => SettingItemView(
              checkedColor: Vx.red500,
              title: e,
              titleStyle: context.bodyText1.copyWith(
                fontSize: 18,
                color: Vx.black,
                fontWeight: FontWeight.normal,
              ),
              leading: Icon(
                FontAwesomeIcons.squareFull,
                size: 30,
                color: e == 'Default' ? Vx.orange400 : Vx.green500,
              ),
              isChecked: e == 'Default',
            ),
          )
          .toList()
          .vStack()
          .scrollVertical(),
    );
  }
}
