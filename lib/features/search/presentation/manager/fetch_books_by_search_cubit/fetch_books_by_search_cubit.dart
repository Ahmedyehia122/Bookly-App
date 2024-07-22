import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetch_books_by_search_state.dart';

class FetchBooksBySearchCubit extends Cubit<FetchBooksBySearchState> {
  FetchBooksBySearchCubit(this.searchRepo) : super(FetchBooksBySearchInitial());

  final SearchRepo searchRepo;

  Future<void> fetchBooksBySearch() async {
    emit(FetchBooksBySearchLoading());
    var result = await searchRepo.fetchBooksBySearch();
    result.fold(
      (failure) {
        emit(FetchBooksBySearchFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(FetchBooksBySearchSuccess(books: books));
      },
    );
  }
}
