import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:equatable/equatable.dart';

part 'books_list_view_state.dart';

class BooksListViewCubit extends Cubit<BooksListViewState> {
  BooksListViewCubit() : super(BooksListViewInitial());
}
