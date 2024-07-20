part of 'books_list_view_cubit.dart';

sealed class BooksListViewState extends Equatable {
  const BooksListViewState();

  @override
  List<Object> get props => [];
}

final class BooksListViewInitial extends BooksListViewState {}

final class BooksListViewLoading extends BooksListViewState {}

final class BooksListViewSuccess extends BooksListViewState {
  final List<BookModel> books;

  const BooksListViewSuccess({required this.books});
}

final class BooksListViewFailure extends BooksListViewState {
  final String errMessage;

  const BooksListViewFailure({required this.errMessage});
}
