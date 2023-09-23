import '../controller/send_money_to_friend_controller.dart';
import 'package:get/get.dart';

class SendMoneyToFriendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToFriendController());
  }
}
