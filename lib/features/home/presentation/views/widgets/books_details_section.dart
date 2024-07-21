import 'package:bookly_app/core/constants/fonts.dart';
import 'package:bookly_app/core/constants/strings.dart';
import 'package:bookly_app/core/constants/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Books_details_view_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/button_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookDetailsViewAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 90.w, vertical: 8.h),
          child: CustomBookImage(
            imageUrl: book.cover ?? AppStrings.errImage,
          ),
        ),
        SizedBox(height: 15.h),
        Text(
          book.title ?? '',
          textAlign: TextAlign.center,
          style: AppStyles.textStyle30,
        ),
        Text(
          book.releaseDate ?? "",
          style: AppStyles.textStyle20.copyWith(
            fontFamily: AppFonts.playFairDisplay,
            color: Colors.white.withOpacity(.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 10.h),
        CustomBookRating(
          pagesNum: book.pages.toString(),
        ),
        SizedBox(height: 20.h),
        const ButtonAction(),
      ],
    );
  }
}
