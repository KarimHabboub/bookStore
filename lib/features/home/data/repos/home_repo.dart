
import 'package:dartz/dartz.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model.dart';

abstract class HomeRepo {

  Future<Either<Failure, List<Items>>> fetchNewestBooks();

  Future<Either<Failure, List<Items>>> fetchFeaturedBooks();

}