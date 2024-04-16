import 'package:get/get.dart';

import '../modules/Download/bindings/download_binding.dart';
import '../modules/Download/views/download_view.dart';
import '../modules/ForgotPassword/bindings/forgot_password_binding.dart';
import '../modules/ForgotPassword/views/forgot_password_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/OPTVerification/bindings/o_p_t_verification_binding.dart';
import '../modules/OPTVerification/views/o_p_t_verification_view.dart';
import '../modules/Signup/bindings/signup_binding.dart';
import '../modules/Signup/views/signup_view.dart';
import '../modules/Splash/bindings/splash_binding.dart';
import '../modules/Splash/views/splash_view.dart';
import '../modules/changePassword/bindings/change_password_binding.dart';
import '../modules/changePassword/views/change_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onBoarding/bindings/on_boarding_binding.dart';
import '../modules/onBoarding/views/on_boarding_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.O_P_T_VERIFICATION,
      page: () => const OPTVerificationView(),
      binding: OPTVerificationBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.DOWNLOAD,
      page: () => const DownloadView(),
      binding: DownloadBinding(),
    ),
  ];
}
