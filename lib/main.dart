import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:training/app/configs/config.dart';

import 'package:training/app/modules/app/views/app_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final configuredApp = AppConfig(
    apiUrl: 'https://example.com/',
    appName: 'Training',
    flavorName: AppFlavor.DEVELOPMENT,
    child: AppView(key: GlobalKey()),
  );
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => GestureDetector(
      onTap: () =>
          WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus(),
      child: configuredApp,
    ),
  ));
}
