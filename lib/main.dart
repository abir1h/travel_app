import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'Travel App',
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
          useMaterial3: false,
          fontFamily: 'Poppins',
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: MaterialColor(
              AppColors.primary.value,
              const <int, Color>{
                50: AppColors.primary,
                100: AppColors.primary,
                200: AppColors.primary,
                300: AppColors.primary,
                400: AppColors.primary,
                500: AppColors.primary,
                600: AppColors.primary,
                700: AppColors.primary,
                800: AppColors.primary,
                900: AppColors.primary,
              },
            ),
          ),
        ),
      ),
    );
  }
}
