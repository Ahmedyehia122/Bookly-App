import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_books_list_view_state.dart';

class BestSellerBooksListViewCubit extends Cubit<BestSellerBooksListViewState> {
  BestSellerBooksListViewCubit(this.homeRepo)
      : super(BestSellerBooksListViewInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooksListview() async {
    emit(BestSellerBooksListViewLoading());
    var result = await homeRepo.fetchBestSellerBooksListview();
    result.fold((failure) {
      emit(BestSellerBooksListViewFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(BestSellerBooksListViewSuccess(books: books));
    });
  }
}
