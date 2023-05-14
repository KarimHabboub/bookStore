
import 'package:bookly/features/home/data/models/book_model.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String error;

  FeaturedBooksFailure(this.error);


}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<Items> books;

   FeaturedBooksSuccess(this.books);
}