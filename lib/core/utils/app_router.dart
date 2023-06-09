import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const  String splashView = '/';
  static const  String searchView = '/SearchView';
  static const  String homeView = '/homeView';
  static const  String bookDetailsView = '/bookDetailsView';
  static final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
      path: splashView,
      builder: (BuildContext context, GoRouterState state) => const SplashView(),
    ),

    GoRoute(
      path: searchView,
      builder: (BuildContext context, GoRouterState state) => const SearchView(),
    ),

    GoRoute(
      path: homeView,
      builder: (BuildContext context, GoRouterState state) => const HomeView(),
    ),

    // GoRoute(
    //   path: bookDetailsView,
    //   builder: (BuildContext context, GoRouterState state) =>  BookDetailsView(
    //       bookData: state.extra as Items,
    //   ),
    // ),
  ]);
}