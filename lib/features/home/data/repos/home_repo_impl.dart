import 'package:bookly_app/core/class/api.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final Api api;

  HomeRepoImpl({required this.api});
  @override
  Future<Either<Failure, List<BookModel>>>
      fetchBestSellerBooksListview() async {
    try {
      List<dynamic> data =
          await api.get(url: 'https://potterapi-fedeperin.vercel.app/en/books');
      List<BookModel> books = [];
      for (var book in data) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksListView() {
    // TODO: implement fetchBooksListView
    throw UnimplementedError();
  }
}
