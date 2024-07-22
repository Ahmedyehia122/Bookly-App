import 'package:bookly_app/core/constants/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/manager/fetch_books_by_search_cubit/fetch_books_by_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBooksListView extends StatelessWidget {
  const SearchBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBooksBySearchCubit, FetchBooksBySearchState>(
      builder: (context, state) {
        if (state is FetchBooksBySearchSuccess) {
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
        } else if (state is FetchBooksBySearchFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errMessage),
          );
        } else if (state is FetchBooksBySearchLoading) {
          return const SliverToBoxAdapter(
            child: CustomLoadingIndicator(),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Search Now',
                style: AppStyles.textStyle18,
              ),
            ),
          );
        }
      },
    );
  }
}
