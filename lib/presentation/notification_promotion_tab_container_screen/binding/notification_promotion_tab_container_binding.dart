import '../controller/notification_promotion_tab_container_controller.dart';
import 'package:get/get.dart';

class NotificationPromotionTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationPromotionTabContainerController());
  }
}
