import '../controller/send_money_to_friend_success_controller.dart';
import 'package:get/get.dart';

class SendMoneyToFriendSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToFriendSuccessController());
  }
}
