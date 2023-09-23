import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/send_money_to_friend_one_screen/models/send_money_to_friend_one_model.dart';

class SendMoneyToFriendOneController extends GetxController {
  Rx<SendMoneyToFriendOneModel> sendMoneyToFriendOneModelObj =
      SendMoneyToFriendOneModel().obs;
  Rx<String> amount = ''.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
