import 'package:get/get.dart';
import 'package:mentalhealth/src/features/authentication/screens/forget_password/reset_password/reset_password.dart';
import 'package:mentalhealth/src/repository/authentication_repository/authentication_repository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const ResetPassword()) : Get.back();
  }
}
