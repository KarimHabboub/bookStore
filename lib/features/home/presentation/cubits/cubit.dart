import 'package:bookly/features/home/presentation/cubits/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit(super.initialState);

  static HomeCubit get(context) => BlocProvider.of(context);

}