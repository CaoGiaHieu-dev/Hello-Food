import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';

class BottomNavigatorController extends GetxController
    with SingleGetTickerProviderMixin {
  TabController? tabController;
  final RxInt currentTabStream = 0.obs;
  int get currentTab => currentTabStream.value;
  final List<String> listTitle = <String>[
    'Home',
    'Near By',
    'Cart',
    'Setting',
  ];
  final List<String> icon = <String>[
    'assets/icons/ic_home.png',
    'assets/icons/ic_near_by.png',
    'assets/icons/ic_cart.png',
    'assets/icons/ic_setting.png',
  ];

  final List<String> selectedIcon = <String>[
    'assets/icons/ic_home.png',
    'assets/icons/ic_near_by.png',
    'assets/icons/ic_cart.png',
    'assets/icons/ic_setting.png',
  ];

  @override
  void onInit() {
    tabController = TabController(length: listTitle.length, vsync: this);
    tabController?.animation!.addListener(() {
      currentTabStream.value = tabController!.animation!.value.round();
    });
    super.onInit();
  }

  void changeTab(int tab) {
    tabController?.animateTo(tab);
    currentTabStream.value = tab;
  }

  @override
  void onClose() {
    tabController?.dispose();
  }
}
