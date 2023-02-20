import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mentalhealth/src/repository/authentication_repository/authentication_repository.dart';
import '../../../repository/authentication_repository/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  ///textfields controller to get the data from textfields signup page

  //TextEditingController email = TextEditingController();
  //TextEditingController password = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> loginUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password);
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }
}
