import 'package:fintap/widgets/spacing.dart';

import 'controller/splash_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashScreen extends GetWidget<SplashController> {
  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(tapGroupUrl))) {
      throw Exception('Could not launch $tapGroupUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.indigoA400,
            body: Container(
                width: size.width,
                padding: getPadding(top: 57, bottom: 57),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VerticalSpace(height: 40),
                      CustomImageView(
                        imagePath: ImageConstant.appLogoLong,
                        height: getVerticalSize(70),
                        width: getHorizontalSize(200),
                      ),
                      GestureDetector(
                        onTap: _launchUrl,
                        child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Text("from",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtGeneralSansSemibold18
                                      .copyWith(
                                          fontSize: 15,
                                          color: Colors.white60,
                                          letterSpacing:
                                              getHorizontalSize(2.00),
                                          height: getVerticalSize(1.0))),
                              SizedBox(height: 4),
                              Image.asset(
                                ImageConstant.tapLogo,
                                color: Colors.white,
                                width: 40,
                                height: 40,
                              )
                            ],
                          ),
                        ),
                      )
                    ]))));
  }
}
