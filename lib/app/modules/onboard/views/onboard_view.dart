import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:travel_app/app/utils/colors.dart';
import '../controllers/onboard_controller.dart';
import 'onboard_first_page.dart';
import 'onboard_second_page.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  _OnboardViewState createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    // You can also add animations here
  }

  @override
  void dispose() {
    _controller.dispose(); // Don't forget to dispose of the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColorDeep,

      body: OnBoardingAnimation(
        pages: [
          OnboardFirstPage(),
          OnboardSecondPage(),
          Container(),
        ],
        indicatorDotHeight: 7.0,
        indicatorDotWidth: 7.0,indicatorVerticalOffset: 20,
        indicatorType: IndicatorType.expandingDots,
        indicatorPosition: IndicatorPosition.bottomCenter,          indicatorSwapType: SwapType. yRotation,

      ),
    );
  }
}
