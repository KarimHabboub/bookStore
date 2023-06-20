import 'package:bookly/features/search/presentation/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/search_repo.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(InitState());

  static SearchCubit get(context) => BlocProvider.of(context);

  final SearchMethod searchMethod = SearchMethod();

  Future<void> resultSearch({required String text}) async {
    emit(LoadingState());
    var result = await searchMethod.searchMethod(text: text);
    result.fold(
      (l) => emit(ErrorState(l.errorMessage)),
      (r) => emit(SuccessState(r)),
    );
  }
}
