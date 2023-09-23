import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import 'controller/sign_in_with_local_auth_controller.dart';

class SignInWithLocalAuthScreen extends StatelessWidget {
  final SignInWithLocalAuthController authController =
      Get.put(SignInWithLocalAuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Colors.blue,
            ),
            SizedBox(height: 40),
            Text(
              'Authenticate to proceed',
              style: AppStyle.txtGeneralSansSemibold24.copyWith(
                color: Colors.black54,
                height: getVerticalSize(
                  0.99,
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: authController.authenticate,
              child: Icon(
                Icons.fingerprint_rounded,
                size: 80,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
