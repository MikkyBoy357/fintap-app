import 'controller/complete_profile_two_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:fintap/core/app_export.dart';

import 'package:fintap/widgets/custom_phone_number.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CompleteProfileTwoScreen extends StatelessWidget {
  var controller = Get.put(CompleteProfileTwoController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: getPadding(left: 24, top: 25),
            child: Text("msg_add_phone_number".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtGeneralSansSemibold16Bluegray900.copyWith(
                    letterSpacing: getHorizontalSize(0.50),
                    height: getVerticalSize(1.11)))),
        Padding(
            padding: getPadding(top: 16, left: 24, right: 24, bottom: 5),
            child: Obx(() => CustomPhoneNumber(
                country: controller.selectedCountry.value,
                controller: controller.phoneNumberController,
                onTap: (Country country) {
                  controller.selectedCountry.value = country;
                })))
      ],
    );
  }

  onTapArrowleft27() {
    Get.back();
  }
}
