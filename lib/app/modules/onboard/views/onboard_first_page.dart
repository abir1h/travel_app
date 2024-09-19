import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/modules/splash/views/splash_view.dart';
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
    return Container(
      height: 1.sh,
      width: 1.sw,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.png.beach.keyName),
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
              "Plan\nyour trip",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 45.sp,
                  color: AppColors.textColorDeep),
            ).animate().fade().scale(),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Wherever you dream to go, we’ll take you there. Explore, plan, and experience like never before!",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  color: AppColors.textColorDeep),
            ).animate().fade().scale()
          ],
        ),
      ),
    );
  }
}
