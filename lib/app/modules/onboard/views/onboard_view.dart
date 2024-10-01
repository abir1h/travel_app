import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:travel_app/app/routes/app_pages.dart';
import 'package:travel_app/app/utils/colors.dart';
import '../../home/views/home_view.dart';
import '../widgets/custom_button.dart';
import 'onbaord_third_page.dart';
import 'onboard_first_page.dart';
import 'onboard_second_page.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  _OnboardViewState createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late PageController pageController;
  int currentPage = 0; // Track current page index

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    pageController = PageController()
      ..addListener(() {
        setState(() {
          currentPage =
              pageController.page!.round(); // Update current page index
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose(); // Don't forget to dispose of the controller
    pageController.dispose(); // Dispose the PageController as well
    super.dispose();
  }

  Color getIndicatorColor(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return Colors.amber;
      case 1:
        return Colors.blue;
      case 2:
        return AppColors.gre;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.9, end: 1.0).animate(
            CurvedAnimation(
              parent: _controller,
              curve: Curves.easeInOut,
            ),
          ),
          child: CustomButton(
            onTap: () {
              if (currentPage== 0) {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else  if (currentPage== 1) {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              }else{
                Get.to(()=>EntryPoint());

              }
            },
            title: currentPage== 2?"Get Started":"Next",
            bgColor: currentPage==0?Colors.amber:currentPage==1?Colors.blue:AppColors.gre,
            radius: 5,
          ),
        ),
      ),
      body: OnBoardingAnimation(
        controller: pageController,
        pages: const [
          OnboardFirstPage(),
          OnboardSecondPage(),
          OnboardThirdPage(),
        ],
        indicatorDotHeight: 7.0,
        indicatorDotWidth: 7.0,
        indicatorVerticalOffset: 20,
        indicatorType: IndicatorType.expandingDots,
        indicatorPosition: IndicatorPosition.topCenter,
        indicatorSwapType: SwapType.yRotation,

        // Use the getIndicatorColor method to set the active dot color
        indicatorActiveDotColor: getIndicatorColor(currentPage),
      ),
    );
  }
}
