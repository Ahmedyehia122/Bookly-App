import 'package:bookly_app/core/constants/strings.dart';
import 'package:bookly_app/core/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/books_list_view_cubit/books_list_view_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksListViewCubit, BooksListViewState>(
      builder: (context, state) {
        if (state is BooksListViewSuccess) {
          List<BookModel> books = state.books;
          return Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 40.h),
            child: SizedBox(
              height: 180.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: CustomBookImage(
                      imageUrl: books[index].cover ?? AppStrings.errImage,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is BooksListViewFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
