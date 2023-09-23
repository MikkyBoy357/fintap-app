import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/onboarding_one_screen/models/onboarding_one_model.dart';

class OnboardingOneController extends GetxController {
  Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;
  Rx<int> activePage = 0.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
