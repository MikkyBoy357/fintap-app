import '../controller/send_money_to_friend_one_controller.dart';
import 'package:get/get.dart';

class SendMoneyToFriendOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyToFriendOneController());
  }
}
