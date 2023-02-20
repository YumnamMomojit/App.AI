import 'package:get/get.dart';
import '../screens/welcome/welcome_scrn.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 4000));
    Get.to(() => const WelcomePage());
    //Get.to(welcomeScreen());
    // Navigator.pushReplacement(
    //   context, MaterialPageRoute(builder: (context) => welcomeScreen()));
  }
}