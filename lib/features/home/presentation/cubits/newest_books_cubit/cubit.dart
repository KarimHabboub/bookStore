import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/cubits/newest_books_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());

  final HomeRepoImpl homeRepo = HomeRepoImpl();

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