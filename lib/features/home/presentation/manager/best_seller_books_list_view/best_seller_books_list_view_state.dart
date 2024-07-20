part of 'best_seller_books_list_view_cubit.dart';

sealed class BestSellerBooksListViewState extends Equatable {
  const BestSellerBooksListViewState();

  @override
  List<Object> get props => [];
}

final class BestSellerBooksListViewInitial
    extends BestSellerBooksListViewState {}

final class BestSellerBooksListViewLoading
    extends BestSellerBooksListViewState {}

final class BestSellerBooksListViewSuccess
    extends BestSellerBooksListViewState {
  final List<BookModel> books;

  const BestSellerBooksListViewSuccess({required this.books});
}

final class BestSellerBooksListViewFailure
    extends BestSellerBooksListViewState {
  final String errMessage;

  const BestSellerBooksListViewFailure({required this.errMessage});
}
