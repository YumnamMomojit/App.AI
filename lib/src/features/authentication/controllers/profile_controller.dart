import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mentalhealth/src/features/authentication/models/user_model.dart';
import 'package:mentalhealth/src/repository/user_repository/user_repository.dart';

import '../../../repository/authentication_repository/authentication_repository.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  ///Step-3 get user email and pass to userRepository to fetch user record.
  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar("Error", "Login to continue");
    }
  }

  updateRecord(UserModel user) async {
    await _userRepo.updateUserRecord(user);
  }
}
