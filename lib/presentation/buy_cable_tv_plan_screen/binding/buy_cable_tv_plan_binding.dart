import 'package:get/get.dart';

import '../controller/buy_cable_tv_plan_controller.dart';



class BuyCableTVPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyCableTVPlanController());
  }
}
