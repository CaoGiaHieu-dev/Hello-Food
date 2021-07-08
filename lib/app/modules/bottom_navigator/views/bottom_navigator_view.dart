import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/bottom_navigator/controllers/bottom_navigator_controller.dart';
import 'package:training/app/modules/home/views/home_view.dart';
import 'package:training/app/modules/setting_page/views/setting_page_view.dart';

class BottomNavigatorView extends GetView<BottomNavigatorController> {
  const BottomNavigatorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.listTitle.length,
      child: Scaffold(
        body: TabBarView(
          controller: controller.tabController,
          children: const <Widget>[
            HomeView(),
            SizedBox(),
            SizedBox(),
            SettingPageView(),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigation(currentTab: controller.currentTab),
        ),
      ),
    );
  }
}

class BottomNavigation extends GetView<BottomNavigatorController> {
  const BottomNavigation({Key? key, this.currentTab = 0}) : super(key: key);
  final int currentTab;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentTab,
      fixedColor: Vx.red500,
      unselectedItemColor: Vx.gray500,
      selectedFontSize: 12.0,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        _makeItem(0, context, 0),
        _makeItem(1, context, 0),
        _makeItem(2, context, 0),
        _makeItem(3, context, 0),
      ],
      onTap: (int value) {
        controller.changeTab(value);
      },
    );
  }

  BottomNavigationBarItem _makeItem(
    int index,
    BuildContext context,
    int notification,
  ) {
    return BottomNavigationBarItem(
      icon: _barIcon(
          controller.icon[index],
          index == currentTab ? Vx.red500 : Vx.gray500,
          context.heightScale / 40),
      activeIcon: _barIcon(
          controller.selectedIcon[index],
          index == currentTab ? Vx.red500 : Vx.gray500,
          context.heightScale / 40),
      label: controller.listTitle[index],
    );
  }

  Widget _barIcon(String path, Color color, double? height) {
    return <Widget>[
      path.contains('home')
          ? Icon(
              Icons.home,
              color: color,
              size: height,
            )
          : path.contains('near')
              ? Icon(
                  FontAwesomeIcons.locationArrow,
                  color: color,
                  size: height,
                )
              : path.contains('setting')
                  ? Icon(
                      FontAwesomeIcons.cog,
                      color: color,
                      size: height,
                    )
                  : Image.asset(
                      path,
                      color: color,
                      height: height,
                    ).centered(),
      const SizedBox(
        height: 3.75,
      )
    ].vStack();
  }
}
