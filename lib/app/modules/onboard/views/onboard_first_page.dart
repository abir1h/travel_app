import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/modules/onboard/widgets/custom_button.dart';
import 'package:travel_app/app/utils/colors.dart';
import 'package:travel_app/gen/assets.gen.dart';

class OnboardFirstPage extends StatefulWidget {
  const OnboardFirstPage({super.key});

  @override
  State<OnboardFirstPage> createState() => _OnboardFirstPageState();
}

class _OnboardFirstPageState extends State<OnboardFirstPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.brd1Color, // Change the color here
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
                color: AppColors.brd1Color,
                image: DecorationImage(image: AssetImage(Assets.images.png.brd1.keyName),fit: BoxFit.fitWidth)
            ),),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 20),
            child: Text(
              "Get Inspired",
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
            padding: const EdgeInsets.only(left: 18.0),
            child: Center(
              child: Text(
                "Wherever you dream to go, we’ll take you there. Explore, plan, and experience like never before!",
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
