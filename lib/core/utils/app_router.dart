import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const SplashView(),
    ),

    GoRoute(
      path: '/homeView',
      builder: (BuildContext context, GoRouterState state) => const HomeView(),
    ),
  ]);
}