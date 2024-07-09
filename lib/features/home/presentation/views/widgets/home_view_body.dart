import 'package:bookly_app/core/constants/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const CustomBooksListView(),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              'Best seller',
              style: AppStyles.mediumTitle,
            ),
          )
        ],
      ),
    );
  }
}
