import 'package:get/get.dart';
import 'package:training/app/modules/cart/controllers/cart_controller.dart';
import 'package:training/app/modules/detail/controllers/detail_controller.dart';
import 'package:training/app/modules/home/controllers/home_controller.dart';

import '../controllers/bottom_navigator_controller.dart';

class BottomNavigatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigatorController>(
      () => BottomNavigatorController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
  }
}
