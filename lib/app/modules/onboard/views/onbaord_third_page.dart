import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/utils/colors.dart';
import 'package:travel_app/gen/assets.gen.dart';

class OnboardThirdPage extends StatefulWidget {
  const OnboardThirdPage({super.key});

  @override
  State<OnboardThirdPage> createState() => _OnboardThirdPageState();
}

class _OnboardThirdPageState extends State<OnboardThirdPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.brd3Color, // Change the color here
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
                color: AppColors.brd3Color,
                image: DecorationImage(image: AssetImage(Assets.images.png.brd3.keyName),fit: BoxFit.fitWidth)
            ),),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 20),
            child: Text(
              "Enjoy your time",
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
                "Make every moment count with hassle-free travel planning. Enjoy your journey while we handle the details, from start to finish",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
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
