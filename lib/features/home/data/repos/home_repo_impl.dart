import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/network/dio_helper.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {

  @override
  Future<Either<Failure, List<Items>>> fetchNewestBooks()  async {
    // TODO: implement fetchNewsBooks
    try {
      final response = await DioHelper.getData(
        path: 'volumes?q=subject: programing&Sorting=newest ',
      );
      final bookModel = BookModel.fromJson(response?.data);
      final itemBook = bookModel.items ?? [];
      return right(itemBook);
    } catch (error) {
      if (error is DioError) {
        return left(ServerFailure.fromDioError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Items>>> fetchFeaturedBooks() async {
    // TODO: implement fetchFeaturedBooks
    try {
      final response = await DioHelper.getData(
        path: 'volumes?q=subject: programing',
      );
      final bookModel = BookModel.fromJson(response?.data);
      final itemBook = bookModel.items ?? [];
      return right(itemBook);
    } catch (error) {
      if (error is DioError) {
        return left(ServerFailure.fromDioError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }
}