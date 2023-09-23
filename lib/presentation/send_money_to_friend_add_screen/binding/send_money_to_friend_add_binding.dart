import '../controller/send_money_to_friend_add_controller.dart';
import 'package:get/get.dart';

class SendMoneyToFriendAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToFriendAddController());
  }
}
