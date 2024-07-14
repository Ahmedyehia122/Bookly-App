import 'package:bookly_app/core/constants/fonts.dart';
import 'package:bookly_app/core/constants/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Books_details_view_app_bar.dart';
import 'package:bookly_app/core/customs/custom_book_image.dart';
import 'package:bookly_app/core/customs/custom_book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
      child: Column(
        children: [
          const BookDetailsViewAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 85.w, vertical: 10.h),
            child: const CustomBookImage(),
          ),
          SizedBox(height: 15.h),
          Text(
            'The Jungle Book',
            style: AppStyles.textStyle30,
          ),
          SizedBox(height: 6.h),
          Text(
            'Rudyadr Kipling',
            style: AppStyles.textStyle20.copyWith(
              fontFamily: AppFonts.playFairDisplay,
              color: Colors.white.withOpacity(.7),
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 6.h),
          const CustomBookRating(),
        ],
      ),
    );
  }
}
