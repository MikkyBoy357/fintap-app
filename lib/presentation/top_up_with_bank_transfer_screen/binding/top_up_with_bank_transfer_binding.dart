import '../controller/top_up_with_bank_transfer_controller.dart';
import 'package:get/get.dart';

class TopUpWithBankTransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopUpWithBankTransferController());
  }
}
