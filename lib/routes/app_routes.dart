import 'package:fintap/presentation/buy_electricity_screen/binding/buy_electricity_binding.dart';
import 'package:fintap/presentation/splash_screen/splash_screen.dart';
import 'package:fintap/presentation/splash_screen/binding/splash_binding.dart';
import 'package:fintap/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:fintap/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:fintap/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:fintap/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:fintap/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:fintap/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:fintap/presentation/sign_in_with_email_screen/sign_in_with_email_screen.dart';
import 'package:fintap/presentation/sign_in_with_email_screen/binding/sign_in_with_email_binding.dart';
import 'package:fintap/presentation/sign_in_with_phone_screen/sign_in_with_phone_screen.dart';
import 'package:fintap/presentation/sign_in_with_phone_screen/binding/sign_in_with_phone_binding.dart';
import 'package:fintap/presentation/pin_screen/pin_screen.dart';
import 'package:fintap/presentation/pin_screen/binding/pin_binding.dart';
import 'package:fintap/presentation/otp_screen/otp_screen.dart';
import 'package:fintap/presentation/otp_screen/binding/otp_binding.dart';
import 'package:fintap/presentation/create_account_screen/create_account_screen.dart';
import 'package:fintap/presentation/create_account_screen/binding/create_account_binding.dart';
import 'package:fintap/presentation/enter_otp_screen/enter_otp_screen.dart';
import 'package:fintap/presentation/enter_otp_screen/binding/enter_otp_binding.dart';
import 'package:fintap/presentation/pin_one_screen/pin_one_screen.dart';
import 'package:fintap/presentation/pin_one_screen/binding/pin_one_binding.dart';
import 'package:fintap/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:fintap/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:fintap/presentation/verification_screen/verification_screen.dart';
import 'package:fintap/presentation/verification_screen/binding/verification_binding.dart';
import 'package:fintap/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:fintap/presentation/create_new_password_screen/binding/create_new_password_binding.dart';
import 'package:fintap/presentation/home_container_screen/home_container_screen.dart';
import 'package:fintap/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:fintap/presentation/notification_promotion_tab_container_screen/notification_promotion_tab_container_screen.dart';
import 'package:fintap/presentation/notification_promotion_tab_container_screen/binding/notification_promotion_tab_container_binding.dart';
import 'package:fintap/presentation/coin_reward_screen/coin_reward_screen.dart';
import 'package:fintap/presentation/coin_reward_screen/binding/coin_reward_binding.dart';
import 'package:fintap/presentation/my_reward_screen/my_reward_screen.dart';
import 'package:fintap/presentation/my_reward_screen/binding/my_reward_binding.dart';
import 'package:fintap/presentation/scan_screen/scan_screen.dart';
import 'package:fintap/presentation/scan_screen/binding/scan_binding.dart';
import 'package:fintap/presentation/payment_success_screen/payment_success_screen.dart';
import 'package:fintap/presentation/payment_success_screen/binding/payment_success_binding.dart';
import 'package:fintap/presentation/top_up_screen/top_up_screen.dart';
import 'package:fintap/presentation/top_up_screen/binding/top_up_binding.dart';
import 'package:fintap/presentation/select_method_screen/select_method_screen.dart';
import 'package:fintap/presentation/select_method_screen/binding/select_method_binding.dart';
import 'package:fintap/presentation/top_up_success_screen/top_up_success_screen.dart';
import 'package:fintap/presentation/top_up_success_screen/binding/top_up_success_binding.dart';
import 'package:fintap/presentation/send_money_screen/send_money_screen.dart';
import 'package:fintap/presentation/send_money_screen/binding/send_money_binding.dart';
import 'package:fintap/presentation/send_money_to_friend_two_screen/send_money_to_friend_two_screen.dart';
import 'package:fintap/presentation/send_money_to_friend_two_screen/binding/send_money_to_friend_two_binding.dart';
import 'package:fintap/presentation/send_money_to_friend_input_screen/send_money_to_friend_input_screen.dart';
import 'package:fintap/presentation/send_money_to_friend_input_screen/binding/send_money_to_friend_input_binding.dart';
import 'package:fintap/presentation/send_money_to_friend_success_screen/send_money_to_friend_success_screen.dart';
import 'package:fintap/presentation/send_money_to_friend_success_screen/binding/send_money_to_friend_success_binding.dart';
import 'package:fintap/presentation/send_money_to_bank_two_screen/send_money_to_bank_two_screen.dart';
import 'package:fintap/presentation/send_money_to_bank_two_screen/binding/send_money_to_bank_two_binding.dart';
import 'package:fintap/presentation/send_money_to_bank_screen/send_money_to_bank_screen.dart';
import 'package:fintap/presentation/send_money_to_bank_screen/binding/send_money_to_bank_binding.dart';
import 'package:fintap/presentation/send_money_to_bank_one_screen/send_money_to_bank_one_screen.dart';
import 'package:fintap/presentation/send_money_to_bank_one_screen/binding/send_money_to_bank_one_binding.dart';
import 'package:fintap/presentation/send_money_to_bank_three_screen/send_money_to_bank_three_screen.dart';
import 'package:fintap/presentation/send_money_to_bank_three_screen/binding/send_money_to_bank_three_binding.dart';
import 'package:fintap/presentation/pay_bill_screen/pay_bill_screen.dart';
import 'package:fintap/presentation/pay_bill_screen/binding/pay_bill_binding.dart';
import 'package:fintap/presentation/pay_bill_two_screen/pay_bill_two_screen.dart';
import 'package:fintap/presentation/pay_bill_two_screen/binding/pay_bill_two_binding.dart';
import 'package:fintap/presentation/pay_bill_one_screen/pay_bill_one_screen.dart';
import 'package:fintap/presentation/pay_bill_one_screen/binding/pay_bill_one_binding.dart';
import 'package:fintap/presentation/send_money_to_friend_three_screen/send_money_to_friend_three_screen.dart';
import 'package:fintap/presentation/send_money_to_friend_three_screen/binding/send_money_to_friend_three_binding.dart';
import 'package:fintap/presentation/send_money_to_friend_screen/send_money_to_friend_screen.dart';
import 'package:fintap/presentation/send_money_to_friend_screen/binding/send_money_to_friend_binding.dart';
import 'package:fintap/presentation/send_money_to_friend_one_screen/send_money_to_friend_one_screen.dart';
import 'package:fintap/presentation/send_money_to_friend_one_screen/binding/send_money_to_friend_one_binding.dart';
import 'package:fintap/presentation/history_tab_container_screen/history_tab_container_screen.dart';
import 'package:fintap/presentation/history_tab_container_screen/binding/history_tab_container_binding.dart';
import 'package:fintap/presentation/wallet_screen/wallet_screen.dart';
import 'package:fintap/presentation/wallet_screen/binding/wallet_binding.dart';
import 'package:fintap/presentation/wallet_two_screen/wallet_two_screen.dart';
import 'package:fintap/presentation/wallet_two_screen/binding/wallet_two_binding.dart';
import 'package:fintap/presentation/wallet_five_screen/wallet_five_screen.dart';
import 'package:fintap/presentation/wallet_five_screen/binding/wallet_five_binding.dart';
import 'package:fintap/presentation/wallet_four_screen/wallet_four_screen.dart';
import 'package:fintap/presentation/wallet_four_screen/binding/wallet_four_binding.dart';
import 'package:fintap/presentation/wallet_three_screen/wallet_three_screen.dart';
import 'package:fintap/presentation/wallet_three_screen/binding/wallet_three_binding.dart';
import 'package:fintap/presentation/account_screen/account_screen.dart';
import 'package:fintap/presentation/account_screen/binding/account_binding.dart';
import 'package:fintap/presentation/complete_profile_screen/complete_profile_screen.dart';
import 'package:fintap/presentation/complete_profile_screen/binding/complete_profile_binding.dart';
import 'package:fintap/presentation/complete_profile_two_screen/complete_profile_two_screen.dart';
import 'package:fintap/presentation/complete_profile_two_screen/binding/complete_profile_two_binding.dart';
import 'package:fintap/presentation/complete_profile_one_screen/complete_profile_one_screen.dart';
import 'package:fintap/presentation/complete_profile_one_screen/binding/complete_profile_one_binding.dart';
import 'package:fintap/presentation/referral_screen/referral_screen.dart';
import 'package:fintap/presentation/referral_screen/binding/referral_binding.dart';

import 'package:fintap/presentation/profile_setting_one_screen/profile_setting_one_screen.dart';
import 'package:fintap/presentation/profile_setting_one_screen/binding/profile_setting_one_binding.dart';
import 'package:fintap/presentation/notification_screen/notification_screen.dart';
import 'package:fintap/presentation/notification_screen/binding/notification_binding.dart';
import 'package:fintap/presentation/security_setting_screen/security_setting_screen.dart';
import 'package:fintap/presentation/security_setting_screen/binding/security_setting_binding.dart';
import 'package:fintap/presentation/language_screen/language_screen.dart';
import 'package:fintap/presentation/language_screen/binding/language_binding.dart';
import 'package:fintap/presentation/linked_account_screen/linked_account_screen.dart';
import 'package:fintap/presentation/linked_account_screen/binding/linked_account_binding.dart';
import 'package:fintap/presentation/help_center_screen/help_center_screen.dart';
import 'package:fintap/presentation/help_center_screen/binding/help_center_binding.dart';
import 'package:fintap/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:fintap/presentation/terms_and_conditions_screen/binding/terms_and_conditions_binding.dart';
import 'package:fintap/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:fintap/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:fintap/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:fintap/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/buy_airtime_screen/binding/buy_airtime_binding.dart';
import '../presentation/buy_airtime_screen/buy_airtime_screen.dart';
import '../presentation/buy_cable_tv_plan_screen/binding/buy_cable_tv_plan_binding.dart';
import '../presentation/buy_cable_tv_plan_screen/buy_cable_tv_plan_screen.dart';
import '../presentation/buy_data_screen/binding/buy_data_binding.dart';
import '../presentation/buy_data_screen/buy_data_screen.dart';
import '../presentation/buy_electricity_screen/buy_electricity_screen.dart';
import '../presentation/wallet_one_page/wallet_one_page.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signInWithEmailScreen = '/sign_in_with_email_screen';

  static const String signInWithPhoneScreen = '/sign_in_with_phone_screen';

  static const String pinScreen = '/pin_screen';

  static const String otpScreen = '/otp_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String pinOneScreen = '/pin_one_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String notificationTransactionPage =
      '/notification_transaction_page';

  static const String notificationPromotionPage =
      '/notification_promotion_page';

  static const String notificationPromotionTabContainerScreen =
      '/notification_promotion_tab_container_screen';

  static const String coinRewardScreen = '/coin_reward_screen';

  static const String coinRewardDetailScreen = '/coin_reward_detail_screen';

  static const String myRewardScreen = '/my_reward_screen';

  static const String scanScreen = '/scan_screen';

  static const String scanSuccessScreen = '/scan_success_screen';

  static const String paymentSuccessScreen = '/payment_success_screen';

  static const String topUpScreen = '/top_up_screen';

  static const String selectMethodScreen = '/select_method_screen';

  static const String newCardScreen = '/new_card_screen';

  static const String topUpWithBankTransferScreen =
      '/top_up_with_bank_transfer_screen';

  static const String topUpWithPaypalScreen = '/top_up_with_paypal_screen';

  static const String topUpSuccessScreen = '/top_up_success_screen';

  static const String sendMoneyScreen = '/send_money_screen';

  static const String sendMoneyToFriendTwoScreen =
      '/send_money_to_friend_two_screen';

  static const String sendMoneyToFriendAddScreen =
      '/send_money_to_friend_add_screen';

  static const String sendMoneyToFriendInputScreen =
      '/send_money_to_friend_input_screen';

  static const String sendMoneyToFriendSuccessScreen =
      '/send_money_to_friend_success_screen';

  static const String sendMoneyToBankTwoScreen =
      '/send_money_to_bank_two_screen';

  static const String sendMoneyToBankScreen = '/send_money_to_bank_screen';

  static const String sendMoneyToBankOneScreen =
      '/send_money_to_bank_one_screen';

  static const String sendMoneyToBankThreeScreen =
      '/send_money_to_bank_three_screen';

  static const String payBillScreen = '/pay_bill_screen';

  static const String payBillTwoScreen = '/pay_bill_two_screen';

  static const String payBillOneScreen = '/pay_bill_one_screen';

  static const String sendMoneyToFriendThreeScreen =
      '/send_money_to_friend_three_screen';

  static const String sendMoneyToFriendScreen = '/send_money_to_friend_screen';

  static const String sendMoneyToFriendOneScreen =
      '/send_money_to_friend_one_screen';

  static const String historyTwoPage = '/history_two_page';

  static const String historyPage = '/history_page';

  static const String historyTabContainerScreen =
      '/history_tab_container_screen';

  static const String historyOnePage = '/history_one_page';

  static const String walletOnePage = '/wallet_one_page';

  static const String walletScreen = '/wallet_screen';

  static const String walletTwoScreen = '/wallet_two_screen';

  static const String walletFiveScreen = '/wallet_five_screen';

  static const String walletFourScreen = '/wallet_four_screen';

  static const String walletThreeScreen = '/wallet_three_screen';

  static const String accountOnePage = '/account_one_page';

  static const String accountScreen = '/account_screen';

  static const String completeProfileScreen = '/complete_profile_screen';

  static const String completeProfileTwoScreen = '/complete_profile_two_screen';

  static const String completeProfileOneScreen = '/complete_profile_one_screen';

  static const String referralScreen = '/referral_screen';

  static const String profileSettingFourScreen = '/profile_setting_four_screen';

  static const String profileSettingTwoScreen = '/profile_setting_two_screen';

  static const String profileSettingOneScreen = '/profile_setting_one_screen';

  static const String notificationScreen = '/notification_screen';

  static const String securitySettingScreen = '/security_setting_screen';

  static const String securitySettingOneScreen = '/security_setting_one_screen';

  static const String securitySettingThreeScreen =
      '/security_setting_three_screen';

  static const String securitySettingFiveScreen =
      '/security_setting_five_screen';

  static const String securitySettingSevenScreen =
      '/security_setting_seven_screen';

  static const String securitySettingTwoScreen = '/security_setting_two_screen';

  static const String securitySettingFourScreen =
      '/security_setting_four_screen';

  static const String languageScreen = '/language_screen';

  static const String linkedAccountScreen = '/linked_account_screen';

  static const String helpCenterScreen = '/help_center_screen';

  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String buyAirtimeScreen = '/buy-airtime-screen';
  static const String buyDataScreen = '/buy-data-screen';
  static const String buyElectricityScreen = '/buy-electricity-screen';
  static const String buyCableTVPlanScreen = '/buy-cable-tv-plan-screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: walletOnePage,
      page: () => WalletOnePage(),
      bindings: [],
    ),
    GetPage(
      name: buyAirtimeScreen,
      page: () => BuyAirtimeScreen(),
      bindings: [
        BuyAirtimeBinding(),
      ],
    ),
    GetPage(
      name: buyDataScreen,
      page: () => BuyDataScreen(),
      bindings: [
        BuyDataBinding(),
      ],
    ),
    GetPage(
      name: buyElectricityScreen,
      page: () => BuyElectricityScreen(),
      bindings: [
        BuyElectricityBinding(),
      ],
    ),
    GetPage(
      name: buyCableTVPlanScreen,
      page: () => BuyCableTVPlanScreen(),
      bindings: [
        BuyCableTVPlanBinding(),
      ],
    ),
    GetPage(
      name: signInWithEmailScreen,
      page: () => SignInWithEmailScreen(),
      bindings: [
        SignInWithEmailBinding(),
      ],
    ),
    GetPage(
      name: signInWithPhoneScreen,
      page: () => SignInWithPhoneScreen(),
      bindings: [
        SignInWithPhoneBinding(),
      ],
    ),
    GetPage(
      name: pinScreen,
      page: () => PinScreen(),
      bindings: [
        PinBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: createAccountScreen,
      page: () => CreateAccountScreen(),
      bindings: [
        CreateAccountBinding(),
      ],
    ),
    GetPage(
      name: enterOtpScreen,
      page: () => EnterOtpScreen(),
      bindings: [
        EnterOtpBinding(),
      ],
    ),
    GetPage(
      name: pinOneScreen,
      page: () => PinOneScreen(),
      bindings: [
        PinOneBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: createNewPasswordScreen,
      page: () => CreateNewPasswordScreen(),
      bindings: [
        CreateNewPasswordBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: notificationPromotionTabContainerScreen,
      page: () => NotificationPromotionTabContainerScreen(),
      bindings: [
        NotificationPromotionTabContainerBinding(),
      ],
    ),
    GetPage(
      name: coinRewardScreen,
      page: () => CoinRewardScreen(),
      bindings: [
        CoinRewardBinding(),
      ],
    ),
    GetPage(
      name: myRewardScreen,
      page: () => MyRewardScreen(),
      bindings: [
        MyRewardBinding(),
      ],
    ),
    GetPage(
      name: scanScreen,
      page: () => ScanScreen(),
      bindings: [
        ScanBinding(),
      ],
    ),
    GetPage(
      name: paymentSuccessScreen,
      page: () => PaymentSuccessScreen(),
      bindings: [
        PaymentSuccessBinding(),
      ],
    ),
    GetPage(
      name: topUpScreen,
      page: () => TopUpScreen(),
      bindings: [
        TopUpBinding(),
      ],
    ),
    GetPage(
      name: selectMethodScreen,
      page: () => SelectMethodScreen(),
      bindings: [
        SelectMethodBinding(),
      ],
    ),
    GetPage(
      name: topUpSuccessScreen,
      page: () => TopUpSuccessScreen(),
      bindings: [
        TopUpSuccessBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyScreen,
      page: () => SendMoneyScreen(),
      bindings: [
        SendMoneyBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToFriendTwoScreen,
      page: () => SendMoneyToFriendTwoScreen(),
      bindings: [
        SendMoneyToFriendTwoBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToFriendInputScreen,
      page: () => SendMoneyToFriendInputScreen(),
      bindings: [
        SendMoneyToFriendInputBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToFriendSuccessScreen,
      page: () => SendMoneyToFriendSuccessScreen(),
      bindings: [
        SendMoneyToFriendSuccessBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToBankTwoScreen,
      page: () => SendMoneyToBankTwoScreen(),
      bindings: [
        SendMoneyToBankTwoBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToBankScreen,
      page: () => SendMoneyToBankScreen(),
      bindings: [
        SendMoneyToBankBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToBankOneScreen,
      page: () => SendMoneyToBankOneScreen(),
      bindings: [
        SendMoneyToBankOneBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToBankThreeScreen,
      page: () => SendMoneyToBankThreeScreen(),
      bindings: [
        SendMoneyToBankThreeBinding(),
      ],
    ),
    GetPage(
      name: payBillScreen,
      page: () => PayBillScreen(),
      bindings: [
        PayBillBinding(),
      ],
    ),
    GetPage(
      name: payBillTwoScreen,
      page: () => PayBillTwoScreen(),
      bindings: [
        PayBillTwoBinding(),
      ],
    ),
    GetPage(
      name: payBillOneScreen,
      page: () => PayBillOneScreen(),
      bindings: [
        PayBillOneBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToFriendThreeScreen,
      page: () => SendMoneyToFriendThreeScreen(),
      bindings: [
        SendMoneyToFriendThreeBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToFriendScreen,
      page: () => SendMoneyToFriendScreen(),
      bindings: [
        SendMoneyToFriendBinding(),
      ],
    ),
    GetPage(
      name: sendMoneyToFriendOneScreen,
      page: () => SendMoneyToFriendOneScreen(),
      bindings: [
        SendMoneyToFriendOneBinding(),
      ],
    ),
    GetPage(
      name: historyTabContainerScreen,
      page: () => HistoryTabContainerScreen(),
      bindings: [
        HistoryTabContainerBinding(),
      ],
    ),
    GetPage(
      name: walletScreen,
      page: () => WalletScreen(),
      bindings: [
        WalletBinding(),
      ],
    ),
    GetPage(
      name: walletTwoScreen,
      page: () => WalletTwoScreen(),
      bindings: [
        WalletTwoBinding(),
      ],
    ),
    GetPage(
      name: walletFiveScreen,
      page: () => WalletFiveScreen(),
      bindings: [
        WalletFiveBinding(),
      ],
    ),
    GetPage(
      name: walletFourScreen,
      page: () => WalletFourScreen(),
      bindings: [
        WalletFourBinding(),
      ],
    ),
    GetPage(
      name: walletThreeScreen,
      page: () => WalletThreeScreen(),
      bindings: [
        WalletThreeBinding(),
      ],
    ),
    GetPage(
      name: accountScreen,
      page: () => AccountScreen(),
      bindings: [
        AccountBinding(),
      ],
    ),
    GetPage(
      name: completeProfileScreen,
      page: () => CompleteProfileScreen(),
      bindings: [
        CompleteProfileBinding(),
      ],
    ),
    GetPage(
      name: completeProfileTwoScreen,
      page: () => CompleteProfileTwoScreen(),
      bindings: [
        CompleteProfileTwoBinding(),
      ],
    ),
    GetPage(
      name: completeProfileOneScreen,
      page: () => CompleteProfileOneScreen(),
      bindings: [
        CompleteProfileOneBinding(),
      ],
    ),
    GetPage(
      name: referralScreen,
      page: () => ReferralScreen(),
      bindings: [
        ReferralBinding(),
      ],
    ),
    GetPage(
      name: profileSettingOneScreen,
      page: () => ProfileSettingOneScreen(),
      bindings: [
        ProfileSettingOneBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: securitySettingScreen,
      page: () => SecuritySettingScreen(),
      bindings: [
        SecuritySettingBinding(),
      ],
    ),
    GetPage(
      name: languageScreen,
      page: () => LanguageScreen(),
      bindings: [
        LanguageBinding(),
      ],
    ),
    GetPage(
      name: linkedAccountScreen,
      page: () => LinkedAccountScreen(),
      bindings: [
        LinkedAccountBinding(),
      ],
    ),
    GetPage(
      name: helpCenterScreen,
      page: () => HelpCenterScreen(),
      bindings: [
        HelpCenterBinding(),
      ],
    ),
    GetPage(
      name: termsAndConditionsScreen,
      page: () => TermsAndConditionsScreen(),
      bindings: [
        TermsAndConditionsBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
