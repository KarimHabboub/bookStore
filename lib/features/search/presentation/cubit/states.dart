import '../../../home/data/models/book_model.dart';

abstract class SearchStates{}

class InitState extends SearchStates{}

class LoadingState extends SearchStates{}

class SuccessState extends SearchStates{
  final List<Items> booksResultsSearch;

  SuccessState(this.booksResultsSearch);
}

class ErrorState extends SearchStates{
  final String error;

  ErrorState(this.error);
}