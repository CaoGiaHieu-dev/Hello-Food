import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:training/app/routes/app_pages.dart';

import '../controllers/app_controller.dart';

class AppView extends GetView<AppController> {
  const AppView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application',
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}
