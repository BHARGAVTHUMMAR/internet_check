import 'package:flutter/material.dart';
import 'package:flutter_getx_intrenet_check/app/modules/network/binding/network_binding.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: NetworkBinding(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
