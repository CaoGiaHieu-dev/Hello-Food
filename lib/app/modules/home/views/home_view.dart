import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';

import '../controllers/home_controller.dart';
import 'home_body_view.dart';
import 'home_header_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        HomeHeaderView(),
        HomeBodyView(),
      ]
          .vStack(alignment: MainAxisAlignment.spaceAround)
          .scrollVertical()
          .pSymmetric(v: 10)
          .safeArea(),
    );
  }
}
