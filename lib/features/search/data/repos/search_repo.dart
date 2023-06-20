import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/network/dio_helper.dart';
import '../../../home/data/models/book_model.dart';

class SearchMethod{
  Future<Either<Failure, List<Items>>> searchMethod(
      {required String text}) async {
    try {
      final response = await DioHelper.getData(
        path: 'volumes?q=$text',
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