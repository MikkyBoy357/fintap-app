import '../controller/history_tab_container_controller.dart';
import 'package:get/get.dart';

class HistoryTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryTabContainerController());
  }
}
