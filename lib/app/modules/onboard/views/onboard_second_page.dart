import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/utils/colors.dart';
import 'package:travel_app/gen/assets.gen.dart';

class OnboardSecondPage extends StatefulWidget {
  const OnboardSecondPage({super.key});

  @override
  State<OnboardSecondPage> createState() => _OnboardSecondPageState();
}

class _OnboardSecondPageState extends State<OnboardSecondPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.brd2Color, // Change the color here
        statusBarIconBrightness: Brightness.dark,      ),
    );
    return Scaffold(
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: .6.sh,
            width: 1.sw,
            decoration: BoxDecoration(
                color: AppColors.brd2Color,
                image: DecorationImage(image: AssetImage(Assets.images.png.brd2.keyName),fit: BoxFit.contain)
            ),),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 20),
            child: Text(
              "Drop your plan",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25.sp,
                color: Colors.black,
              ),
            ).animate().fade().scale(),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 20),
            child: Center(
              child: Text(
                "Unleash your wanderlust with seamless trip planning . Discover new destinations, plan effortlessly, and embark on unforgettable adventures.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
              ).animate().fade().scale(),
            ),
          ),
        ],
      ),
    );
  }
}
