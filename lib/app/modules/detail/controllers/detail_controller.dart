import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';

class DetailController extends GetxController
    with SingleGetTickerProviderMixin {
  final Map<String, dynamic> agrs = Get.arguments;
  late String image;
  late String name;
  late final TabController tabController;
  @override
  void onInit() {
    image = agrs['assetImage'];
    name = agrs['name'];
    tabController = TabController(vsync: this, length: 2);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
