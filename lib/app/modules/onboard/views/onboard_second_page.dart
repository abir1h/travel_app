import 'package:flutter/cupertino.dart';
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
    return Container(
      height: 1.sh,
      width: 1.sw,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.png.onbaord1.keyName),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Location",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 45.sp,
                  color: AppColors.white1),
            ).animate().fade().scale(), SizedBox(
              height: 20.h,
            ),
            Text(
              "Choose\nyour destination",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 28.sp,
                  color: AppColors.white1),
            ).animate().fade().scale(),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Wherever you dream to go, we’ll take you there. Explore, plan, and experience like never before!",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  color: AppColors.white1),
            ).animate().fade().scale()
          ],
        ),
      ),
    );
  }
}
