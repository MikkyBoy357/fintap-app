import 'package:get/get.dart';

import '../controller/buy_electricity_controller.dart';


class BuyElectricityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyElectricityController());
  }
}
