import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/network/dio_helper.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoIMp implements HomeRepo {
  BookModel? bookModel;
  List<Items> itemBook = [];

  @override
  void fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    DioHelper.getData(
      path: 'https://www.googleapis.com/books/v1/volumes?q=subject: programing&Sorting=newest ',
    ).then((value) {
      bookModel = BookModel.fromJson(value?.data);
      bookModel?.items?.forEach((element) {
        itemBook.add(element);
      });
    }).catchError((onError) {
      if (onError is DioError) {
        ServerFailure.fromDioError(onError);
      } else {
        ServerFailure(onError.toString());
      }
    });
  }

  @override
  void fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    DioHelper.getData(
      path: 'volumes?q=subject: programing',
    ).then((value) {
      bookModel = BookModel.fromJson(value?.data);
      bookModel?.items?.forEach((element) {
        itemBook.add(element);
      });
    }).catchError((onError) {
      if (onError is DioError) {
        ServerFailure.fromDioError(onError);
      } else {
        ServerFailure(onError.toString());
      }
    });
  }
}
