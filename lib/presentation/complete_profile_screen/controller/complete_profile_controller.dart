import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/complete_profile_screen/models/complete_profile_model.dart';

class CompleteProfileController extends GetxController {
  Rx<CompleteProfileModel> completeProfileModelObj = CompleteProfileModel().obs;

  Rx<int> activeStep = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
