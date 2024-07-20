import 'package:bookly_app/core/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/best_seller_books_list_view/best_seller_books_list_view_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksListViewCubit,
        BestSellerBooksListViewState>(
      builder: (context, state) {
        if (state is BestSellerBooksListViewSuccess) {
          List<BookModel> books = state.books;
          return SliverList.builder(
            itemCount: books.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              child: BookListViewItem(
                book: books[index],
              ),
            ),
          );
        } else if (state is BestSellerBooksListViewFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomCircularIndicator(),
          );
        }
      },
    );
  }
}
