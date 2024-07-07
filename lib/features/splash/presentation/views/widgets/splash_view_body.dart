import 'package:bookly_app/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AppImages.logo,
            width: 100.w,
            height: 100.h,
          ),
          SizedBox(
            height: 5.h,
          ),
          const Text(
            'Read books for free',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
