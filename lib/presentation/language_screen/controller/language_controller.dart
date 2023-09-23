import 'package:fintap/core/app_export.dart';
import 'package:fintap/presentation/language_screen/models/language_model.dart';
import 'package:flutter/material.dart';

class LanguageController extends GetxController {
  Rx<LanguageModel> languageModelObj = LanguageModel().obs;
  Locale? locale = Locale('en');
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeLang(String langCode) {
    locale = Locale(langCode);
    Get.updateLocale(locale!);
  }
}
