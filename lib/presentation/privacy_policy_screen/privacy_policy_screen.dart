import 'dart:io';

import 'package:animator/animator.dart';
import 'package:fintap/widgets/bk_btn.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:fintap/core/app_export.dart';
import 'package:fintap/widgets/app_bar/appbar_subtitle.dart';
import 'package:fintap/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    print("initState");
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: ColorConstant.gray100,
          appBar: CustomAppBar(
            backgroundColor: ColorConstant.whiteA700,
            height: getVerticalSize(60.00),
            leadingWidth: 48,
            leading: BkBtn(
              margin: getMargin(left: 24, top: 12, bottom: 24),
            ),
            centerTitle: true,
            title: AppbarSubtitle(text: "Contact Us"),
          ),
          body: Stack(
            children: [
              WebView(
                initialUrl: finTapContact,
                javascriptMode: JavascriptMode.unrestricted,
                onPageStarted: (String url) {
                  setState(() {
                    isLoading = true;
                  });
                },
                onPageFinished: (String url) {
                  setState(() {
                    isLoading = false;
                  });
                },
              ),
              if (isLoading)
                Center(
                  child: Animator<double>(
                    tween: Tween<double>(begin: 15.0, end: 25.0),
                    duration: const Duration(milliseconds: 1000),
                    cycles: 0,
                    curve: Curves.easeInOut,
                    builder: (context, animatorState, child) => Image.asset(
                      ImageConstant.appLogo,
                      width: animatorState.value * 5,
                    ),
                  ),
                )
            ],
          ),
        ));
  }

  onTapArrowleft44() {
    Get.back();
  }
}
