import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:fintap/core/app_export.dart';

class SignInWithLocalAuthController extends GetxController {
  final LocalAuthentication _localAuth = LocalAuthentication();
  final RxBool isAuthenticating = false.obs;

  Future<void> authenticate() async {
    if (isAuthenticating.value) return;

    isAuthenticating.value = true;

    try {
      final isBiometricAvailable = await _localAuth.canCheckBiometrics;
      if (!isBiometricAvailable) {
        isAuthenticating.value = false;
        return;
      }

      final isAuthenticated = await _localAuth.authenticate(
        localizedReason: 'Authenticate to access the app',
      );

      if (isAuthenticated) {
         Get.offAllNamed(AppRoutes.homeContainerScreen);
      }

    } on PlatformException catch (e) {
      print(e);

    } catch (e) {
      // Handle authentication errors here.
      print('Authentication error: $e');
    } finally {
      isAuthenticating.value = false;
    }
  }
}
