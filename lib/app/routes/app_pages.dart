import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/introscreen/intro_page_1/bindings/intro_page_1_binding.dart';
import '../modules/introscreen/intro_page_1/views/intro_page_1_view.dart';
import '../modules/introscreen/intro_page_2/bindings/intro_page_2_binding.dart';
import '../modules/introscreen/intro_page_2/views/intro_page_2_view.dart';
import '../modules/introscreen/intro_page_3/bindings/intro_page_3_binding.dart';
import '../modules/introscreen/intro_page_3/views/intro_page_3_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboading/bindings/onboading_binding.dart';
import '../modules/onboading/views/onboading_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOADING;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOADING,
      page: () => const OnboadingView(),
      binding: OnboadingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.INTRO_PAGE_1,
      page: () => const IntroPage1View(),
      binding: IntroPage1Binding(),
    ),
    GetPage(
      name: _Paths.INTRO_PAGE_2,
      page: () => const IntroPage2View(),
      binding: IntroPage2Binding(),
    ),
    GetPage(
      name: _Paths.INTRO_PAGE_3,
      page: () => const IntroPage3View(),
      binding: IntroPage3Binding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
