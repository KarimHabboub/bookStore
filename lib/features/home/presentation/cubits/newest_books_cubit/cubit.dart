
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/cubits/newest_books_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}