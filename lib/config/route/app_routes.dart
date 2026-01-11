import 'package:get/get.dart';
import '../../features/auth/change_password/presentation/screen/change_password_screen.dart';
import '../../features/auth/forgot password/presentation/screen/create_password.dart';
import '../../features/auth/forgot password/presentation/screen/forgot_password.dart';
import '../../features/auth/forgot password/presentation/screen/verify_screen.dart';
import '../../features/auth/sign in/presentation/screen/sign_in_screen.dart';
import '../../features/auth/sign up/presentation/screen/category_choose_screen.dart';
import '../../features/auth/sign up/presentation/screen/sign_up_screen.dart';
import '../../features/auth/sign up/presentation/screen/verify_user.dart';
import '../../features/bottom_nav_screen/main_bottom_nav/main_bottom_nav_screen.dart';
import '../../features/bottom_nav_screen/presentation/home_screen/fishing_screen.dart';
import '../../features/bottom_nav_screen/presentation/home_screen/view_forecast_screen.dart';
import '../../features/bottom_nav_screen/presentation/screen/seven_days_forecast_list_screen.dart';
import '../../features/message/presentation/screen/chat_screen.dart';
import '../../features/message/presentation/screen/message_screen.dart';
import '../../features/notifications/presentation/screen/notifications_screen.dart';
import '../../features/onboarding_screen/screen/language_select_onboarding_screen.dart';
import '../../features/onboarding_screen/screen/onboarding_screen.dart';
import '../../features/profile/presentation/screen/edit_profile.dart';
import '../../features/profile/presentation/screen/profile_screen.dart';
import '../../features/setting/presentation/screen/about_us_screen.dart';
import '../../features/setting/presentation/screen/change_language_screen.dart';
import '../../features/setting/presentation/screen/help_and_support_screen.dart';
import '../../features/setting/presentation/screen/manage_location_screen.dart';
import '../../features/setting/presentation/screen/my_package_screen.dart';
import '../../features/setting/presentation/screen/privacy_policy_screen.dart';
import '../../features/setting/presentation/screen/setting_screen.dart';
import '../../features/splash/splash_screen.dart';
import '../../features/subsription/subscription_screen.dart';

class AppRoutes {
  static const String test = "/test_screen.dart";
  static const String splash = "/splash_screen.dart";
  static const String onboarding = "/onboarding_screen.dart";
  static const String signUp = "/sign_up_screen.dart";
  static const String verifyUser = "/verify_user.dart";
  static const String signIn = "/sign_in_screen.dart";
  static const String forgotPassword = "/forgot_password.dart";
  static const String verifyEmail = "/verify_screen.dart";
  static const String createPassword = "/create_password.dart";
  static const String changePassword = "/change_password_screen.dart";
  static const String notifications = "/notifications_screen.dart";
  static const String chat = "/chat_screen.dart";
  static const String message = "/message_screen.dart";
  static const String profile = "/profile_screen.dart";
  static const String editProfile = "/edit_profile.dart";
  static const String privacyPolicy = "/privacy_policy_screen.dart";
  static const String termsOfServices = "/terms_of_services_screen.dart";
  static const String setting = "/setting_screen.dart";




  ///----------------------------------=======================onboarding Screen===============---------
  static const String languageSelectOnboardingScreen = "/LanguageSelectOnboardingScreen";
  static const String firstOnboardingScreen = "/FirstOnboardingScreen";
  static const String otpVerifyScreen = "/OtpVerifyScreen";
  static const String mainBottomNavScreen = "/MainBottomNavScreen";
  static const String sevenDaysForecastListScreen = "/SevenDaysForecastListScreen";
  static const String viewForeCastScreen = "/ViewForeCastScreen";
  static const String fishingScreen = "/FishingScreen";
  static const String myPackageScreen = "/MyPackageScreen";
  static const String manageLocationScreen = "/ManageLocationScreen";
  static const String changeLanguageScreen = "/ChangeLanguageScreen";
  static const String helpAndSupportScreen = "/HelpAndSupportScreen";
  static const String aboutUsScreen = "/AboutUsScreen";
  static const String privacyPolicyScreen= "/PrivacyPolicyScreen";
  static const String subscriptionScreen= "/SubscriptionScreen";
  static const String categoryChooseScreen= "/CategoryChooseScreen";




  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: onboarding, page: () => const OnboardingScreen()),
    GetPage(name: signUp, page: () => SignUpScreen()),
    GetPage(name: verifyUser, page: () => const VerifyUser()),
    GetPage(name: signIn, page: () => SignInScreen()),
    GetPage(name: forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(name: verifyEmail, page: () => const OtpVerifyScreen()),
    GetPage(name: createPassword, page: () => CreatePassword()),
    GetPage(name: changePassword, page: () => ChangePasswordScreen()),
    GetPage(name: notifications, page: () => const NotificationScreen()),
    GetPage(name: chat, page: () => const ChatListScreen()),
    GetPage(name: message, page: () => const MessageScreen()),
    GetPage(name: profile, page: () => const ProfileScreen()),
    GetPage(name: editProfile, page: () => EditProfile()),
    GetPage(name: privacyPolicy, page: () =>  PrivacyPolicyScreen()),
    GetPage(name: setting, page: () => const SettingScreen()),
    GetPage(name:aboutUsScreen, page: () => const AboutUsScreen()),






    ///-------------------------------=====================onboarding scree========---------------------


    GetPage(name: languageSelectOnboardingScreen, page: () => const LanguageSelectOnboardingScreen()),
    GetPage(name: firstOnboardingScreen, page: () => const SplashScreen()),
    GetPage(name: otpVerifyScreen, page: () => const OtpVerifyScreen()),
    GetPage(name: mainBottomNavScreen, page: () => const MainBottomNavScreen()),
    GetPage(name: viewForeCastScreen, page: () => const ViewForeCastScreen()),
    GetPage(name: fishingScreen, page: () => const FishingScreen()),
    GetPage(name: manageLocationScreen, page: () => const ManageLocationScreen()),
    GetPage(name: myPackageScreen, page: () => const MyPackageScreen()),
    GetPage(name: changeLanguageScreen, page: () => const ChangeLanguageScreen()),
    GetPage(name: helpAndSupportScreen, page: () => const HelpAndSupportScreen()),
    GetPage(name: privacyPolicyScreen, page: () => PrivacyPolicyScreen()),
    GetPage(name: subscriptionScreen, page: () => SubscriptionScreen()),
    GetPage(name: categoryChooseScreen, page: () => CategoryChooseScreen()),
    GetPage(name: sevenDaysForecastListScreen, page: () => const SevenDaysForecastListScreen()),


  ];
}
