import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/detail/views/detail_body_view.dart';
import 'package:training/app/routes/app_pages.dart';

import '../controllers/detail_controller.dart';
import 'detail_bottom_view.dart';
import 'detail_header_view.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        backgroundColor: Vx.gray100,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Vx.black,
        ).onInkTap(() {
          Get.back();
        }),
        actions: <Widget>[
          const Icon(
            FontAwesomeIcons.briefcase,
            color: Vx.black,
          ).onInkTap(() {
            Get.toNamed(Routes.CART);
          }).pSymmetric(h: 20),
        ],
      ),
      body: <Widget>[
        const DetailHeaderView(),
        const DetailBodyView().h(context.heightScale / 3),
        const DetailBottomView(),
      ].vStack().scrollVertical().safeArea(),
    );
  }
}
