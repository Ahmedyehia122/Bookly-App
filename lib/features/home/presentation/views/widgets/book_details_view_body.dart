import 'package:bookly_app/features/home/presentation/views/widgets/Books_details_view_app_bar.dart';
import 'package:bookly_app/core/customs/custom_book_image.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 75.w, vertical: 20.h),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
