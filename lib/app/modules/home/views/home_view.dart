import 'package:flutter/material.dart';
import 'package:flutter_getx_intrenet_check/app/modules/network/controllers/network_controller.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final NetworkController _networkController = Get.find<NetworkController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            _networkController.connectionStatus.value == 1
                ? "Wi Fi Connected"
                : (_networkController.connectionStatus.value == 2
                    ? "Mobile Internet"
                    : "No Connection"),
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
