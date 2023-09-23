import 'package:get/get.dart';

import '../controller/buy_data_controller.dart';

class BuyDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyDataController());
  }
}
