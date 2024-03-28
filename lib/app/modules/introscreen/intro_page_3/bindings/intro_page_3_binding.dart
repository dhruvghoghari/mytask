import 'package:get/get.dart';

import '../controllers/intro_page_3_controller.dart';

class IntroPage3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroPage3Controller>(
      () => IntroPage3Controller(),
    );
  }
}
