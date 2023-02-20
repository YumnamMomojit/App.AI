import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:mentalhealth/src/features/authentication/controllers/onboarding_grid2_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Grid2 extends StatelessWidget {
  const Grid2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();

    return Scaffold(
      appBar: AppBar(title: const Text("E-Resouces")),
      backgroundColor: Colors.transparent,
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangedCallBack,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                onPressed: () => obcontroller.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    onPrimary: Colors.white),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color(0xff272727), shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              )),
          Positioned(
            top: 10,
            right: 20,
            child: TextButton(
              onPressed: () => obcontroller.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Obx(
            () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: obcontroller.currentPage.value,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Colors.pink,
                    dotHeight: 5.0,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
