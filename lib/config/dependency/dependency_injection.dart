
import 'package:get/get.dart';
import 'package:wendy_weather/features/auth/forgot%20password/presentation/controller/otp_verify_screen_controller.dart';

import '../../features/auth/change_password/presentation/controller/change_password_controller.dart';
import '../../features/auth/forgot password/presentation/controller/forget_password_controller.dart';
import '../../features/auth/sign in/presentation/controller/sign_in_controller.dart';
import '../../features/auth/sign up/presentation/controller/sign_up_controller.dart';
import '../../features/bottom_nav_screen/presentation/controller/home_controller.dart';
import '../../features/bottom_nav_screen/presentation/screen/controller/alerm_controller.dart';
import '../../features/message/presentation/controller/chat_controller.dart';
import '../../features/message/presentation/controller/message_controller.dart';
import '../../features/notifications/presentation/controller/notifications_controller.dart';
import '../../features/profile/presentation/controller/profile_controller.dart';
import '../../features/setting/presentation/controller/privacy_policy_controller.dart';
import '../../features/setting/presentation/controller/setting_controller.dart';
import '../../features/setting/presentation/controller/terms_of_services_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => SignInController(), fenix: true);
    Get.lazyPut(() => ForgetPasswordController(), fenix: true);
    Get.lazyPut(() => ChangePasswordController(), fenix: true);
    Get.lazyPut(() => NotificationsController(), fenix: true);
    Get.lazyPut(() => ChatController(), fenix: true);
    Get.lazyPut(() => MessageController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => SettingController(), fenix: true);
    Get.lazyPut(() => PrivacyPolicyController(), fenix: true);
    Get.lazyPut(() => TermsOfServicesController(), fenix: true);
    Get.lazyPut(() => OtpVerifyScreenController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => AlarmController(), fenix: true);
  }
}
