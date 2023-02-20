import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mentalhealth/src/features/authentication/models/user_model.dart';
import 'package:mentalhealth/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen_phone.dart';
import 'package:mentalhealth/src/repository/authentication_repository/authentication_repository.dart';
import 'package:mentalhealth/src/repository/user_repository/user_repository.dart';

import '../screens/login/Login.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //textfields controller to get the data from textfields signup page
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController phoneno = TextEditingController();

  final userRepo = Get.put(UserRepository());

//call this function from design & they will do the logic
  void registerUser(String email, String password) {
    //AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

//GET PHONENO FROM USER AND PASS IT TO AUTH REPOSITORY FOR FIREBASE AUTHENTICATION
  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    registerUser(user.email, user.password);
    //phoneAuthentication(user.phoneno);
    Get.to(() => const SignEmail());
  }

  void phoneAuthentication(String phoneno) {
    AuthenticationRepository.instance.phoneAuthentication(phoneno);
  }
}
