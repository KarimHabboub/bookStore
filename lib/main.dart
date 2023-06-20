import 'package:bookly/core/network/dio_helper.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/bloc_observer.dart';
import 'package:bookly/core/utils/constant.dart';
import 'package:bookly/features/home/presentation/cubits/newest_books_cubit/cubit.dart';
import 'package:bookly/features/search/presentation/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/home/presentation/cubits/featured_books_cubit/cubit.dart';

void main() {
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => FeaturedBooksCubit()..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (BuildContext context) => NewestBooksCubit()..fetchNewestBooks(),
        ),
        BlocProvider(
            create: (BuildContext context) => SearchCubit(),
        ),
      ],
      child: MaterialApp.router(
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
