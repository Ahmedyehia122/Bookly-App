part of 'fetch_books_by_search_cubit.dart';

sealed class FetchBooksBySearchState extends Equatable {
  const FetchBooksBySearchState();

  @override
  List<Object> get props => [];
}

final class FetchBooksBySearchInitial extends FetchBooksBySearchState {}

final class FetchBooksBySearchLoading extends FetchBooksBySearchState {}

final class FetchBooksBySearchSuccess extends FetchBooksBySearchState {
  final List<BookModel> books;

  const FetchBooksBySearchSuccess({required this.books});
}

final class FetchBooksBySearchFailure extends FetchBooksBySearchState {
  final String errMessage;

  const FetchBooksBySearchFailure({required this.errMessage});
}
