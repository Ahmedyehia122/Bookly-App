import 'package:bookly_app/core/class/api_service.dart';
import 'package:bookly_app/core/constants/strings.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksBySearch() async {
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
