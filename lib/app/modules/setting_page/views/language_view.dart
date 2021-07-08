import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/setting_page/commons/setting_layout_view.dart';

import '../commons/setting_item_view.dart';

class LanguageView extends GetView {
  const LanguageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SettingLayoutView(
      title: 'Ngôn ngữ',
      appBarTitleColor: Vx.white,
      actionTitle: 'Áp dụng',
      child: <String>['English', 'Vietnamese', 'Japanese', 'Korean', 'Chinese']
          .map(
            (e) => SettingItemView(
              title: e,
              isChecked: e == 'Vietnamese',
            ),
          )
          .toList()
          .vStack()
          .scrollVertical(),
    );
  }
}
