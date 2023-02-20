import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../dashboard/grid2/eresouces_widget.dart';
import '../models/e_res_onboarding.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    EResoucesonboarding(
      model: OnBoardingModel(
        title: OnboardingText,
        //  height: size.height,
        bgColor: tonboardingpage1,
        image: jonboardingimage,
        counterText: Counter1,
      ),
    ),
    EResoucesonboarding(
      model: OnBoardingModel(
        title: OnboardingText,
        //  height: size.height,
        bgColor: tonboardingpage2,
        image: konboardingimage1,
        counterText: Counter2,
      ),
    ),
    EResoucesonboarding(
      model: OnBoardingModel(
        title: OnboardingText,
        // height: size.height,
        bgColor: tonboardingpage3,
        image: zonboardingimage2,
        counterText: Counter3,
      ),
    ),
  ];

  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangedCallBack(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
