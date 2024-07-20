import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'books_list_view_state.dart';

class BooksListViewCubit extends Cubit<BooksListViewState> {
  BooksListViewCubit(this.homeRepo) : super(BooksListViewInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBooksListView() async {
    emit(BooksListViewLoading());
    var result = await homeRepo.fetchBooksListView();
    result.fold((failure) {
      emit(BooksListViewFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(BooksListViewSuccess(books: books));
    });
  }
}
