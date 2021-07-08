import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/setting_page/commons/setting_item_view.dart';
import 'package:training/app/modules/setting_page/commons/setting_layout_view.dart';

class FontView extends GetView {
  const FontView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SettingLayoutView(
      title: 'Font chữ',
      appBarTitleColor: Vx.white,
      actionTitle: 'Áp dụng',
      child: <String>[
        'OpenSans',
        'ProximaNova',
        'Raleway',
        'Roboto',
        'Merriweather'
      ]
          .map(
            (e) => SettingItemView(
              title: e,
              isChecked: e == 'Roboto',
            ),
          )
          .toList()
          .vStack()
          .scrollVertical(),
    );
  }
}
