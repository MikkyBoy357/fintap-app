import 'package:get/get.dart';

import '../controller/buy_airtime_controller.dart';

class BuyAirtimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyAirtimeController());
  }
}
