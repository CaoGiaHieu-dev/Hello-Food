import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/detail/commons/decorated_tabbar.dart';
import 'package:training/app/modules/detail/controllers/detail_controller.dart';

class DetailBodyView extends GetView<DetailController> {
  const DetailBodyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      DefaultTabController(
        length: 2,
        child: DecoratedTabBar(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.transparent),
            ),
          ),
          tabBar: TabBar(
            controller: controller.tabController,
            labelStyle: context.bodyText1
                .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
            labelPadding: const EdgeInsets.all(10),
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Vx.red500,
            labelColor: Vx.red500,
            unselectedLabelColor: Vx.gray500,
            tabs: <Widget>[
              Tab(
                child: 'Food Details'.text.make(),
              ),
              Tab(
                child: 'Food Reviews'.text.make(),
              )
            ],
          ),
        ),
      ),
      TabBarView(
        controller: controller.tabController,
        children: <Widget>[
          'Food Details'
              .text
              .textStyle(
                context.bodyText1.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              )
              .make(),
          'Food Reviews'.text.make(),
        ],
      ).pSymmetric(v: 10, h: 20).expand()
    ].vStack();
  }
}
