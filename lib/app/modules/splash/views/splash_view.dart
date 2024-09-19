import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/main.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {    controller.onInit();

  return Scaffold(

      body:  Image.asset(Assets.images.png.bg1.keyName,fit: BoxFit.cover,height: 1.sh,),
    );
  }
}
