import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/select_method_screen/models/select_method_model.dart';

class SelectMethodController extends GetxController {
  RxList<SelectMethodModel> bankList = RxList([
    SelectMethodModel(
        img: ImageConstant.imgFrame2540x40, title: 'Bank of America'),
    SelectMethodModel(img: ImageConstant.imgFrame40, title: 'Capital One'),
    SelectMethodModel(img: ImageConstant.imgImage59, title: 'Citi'),
  ]);
  RxList<SelectMethodModel> digialPaymentList = RxList([
    SelectMethodModel(img: ImageConstant.imgReply, title: 'Paypal'),
    SelectMethodModel(img: ImageConstant.imgFrame25WhiteA700, title: 'Stripe'),
  ]);

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
