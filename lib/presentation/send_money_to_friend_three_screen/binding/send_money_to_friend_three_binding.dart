import '../controller/send_money_to_friend_three_controller.dart';
import 'package:get/get.dart';

class SendMoneyToFriendThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToFriendThreeController());
  }
}
