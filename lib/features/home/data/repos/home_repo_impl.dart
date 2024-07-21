import 'package:bookly_app/core/class/api_service.dart';
import 'package:bookly_app/core/constants/strings.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>>
      fetchBestSellerBooksListview() async {
    try {
      List<dynamic> data =
          // ignore: missing_required_param
          await apiService.get(url: AppStrings.endpoit);
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
  Future<Either<Failure, List<BookModel>>> fetchBooksListView() async {
    try {
      List<dynamic> data =
          // ignore: missing_required_param
          await apiService.get(url: AppStrings.endpoit);
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
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooksListView() async {
    try {
      // ignore: missing_required_param
      List<dynamic> data = await apiService.get(url: AppStrings.endpoit);

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
}
