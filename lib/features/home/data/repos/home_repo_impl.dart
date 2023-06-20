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
        path: 'volumes?q=entertainment',
      );
      final bookModel = BookModel.fromJson(response?.data);
      final itemBook = bookModel.items ?? [];
      // for(int x=0; x<=itemBook.length; x++){
      //      print(itemBook[x].volumeInfo?.title);
      //      print(itemBook[x].volumeInfo?.authors?.first);
      //      print(itemBook[x].volumeInfo?.pageCount);
      //      print('---------------------------------');
      //
      // }
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
        path: 'volumes?Filtering=free-ebooks&q=subject:Programming',
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