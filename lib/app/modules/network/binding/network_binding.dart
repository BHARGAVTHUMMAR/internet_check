import 'package:flutter_getx_intrenet_check/app/modules/network/controllers/network_controller.dart';
import 'package:get/get.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(
      () => NetworkController(),
    );
  }
}
