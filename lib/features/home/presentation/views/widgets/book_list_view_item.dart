import 'package:bookly_app/core/constants/fonts.dart';
import 'package:bookly_app/core/constants/routes.dart';
import 'package:bookly_app/core/constants/strings.dart';
import 'package:bookly_app/core/constants/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, this.book});
  final BookModel? book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRoutes.kBookDetailsView, extra: book as BookModel);
      },
      child: SizedBox(
        height: 125.h,
        child: Row(
          children: [
            // image

            CustomBookImage(
              imageUrl: book?.cover ?? AppStrings.errImage,
            ),

            SizedBox(
              width: 30.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      book?.title ?? '',
                      style: AppStyles.textStyle20
                          .copyWith(fontFamily: AppFonts.playFairDisplay),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    book?.releaseDate ?? '',
                    style: AppStyles.textStyle14.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: AppStyles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      CustomBookRating(
                        pagesNum: book?.pages.toString(),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
