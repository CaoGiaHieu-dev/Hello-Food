import 'package:get/get.dart';

import 'package:training/app/modules/bottom_navigator/bindings/bottom_navigator_binding.dart';
import 'package:training/app/modules/bottom_navigator/views/bottom_navigator_view.dart';
import 'package:training/app/modules/cart/bindings/cart_binding.dart';
import 'package:training/app/modules/cart/views/cart_view.dart';
import 'package:training/app/modules/detail/bindings/detail_binding.dart';
import 'package:training/app/modules/detail/views/detail_view.dart';
import 'package:training/app/modules/home/bindings/home_binding.dart';
import 'package:training/app/modules/home/views/home_view.dart';
import 'package:training/app/modules/login/bindings/login_binding.dart';
import 'package:training/app/modules/login/views/login_view.dart';
import 'package:training/app/modules/register/bindings/register_binding.dart';
import 'package:training/app/modules/register/views/register_view.dart';
import 'package:training/app/modules/setting_page/bindings/setting_page_binding.dart';
import 'package:training/app/modules/setting_page/views/setting_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATOR,
      page: () => const BottomNavigatorView(),
      binding: BottomNavigatorBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_PAGE,
      page: () => const SettingPageView(),
      binding: SettingPageBinding(),
    ),
  ];
}
