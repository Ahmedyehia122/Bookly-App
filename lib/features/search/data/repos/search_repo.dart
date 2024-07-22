import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  // there is no api that make me fetch books by search right now so i used get request
  Future<Either<Failure, List<BookModel>>> fetchBooksBySearch();
}
