import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/payment_success_screen/models/payment_success_model.dart';

class PaymentSuccessController extends GetxController {
  Rx<PaymentSuccessModel> paymentSuccessModelObj = PaymentSuccessModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
