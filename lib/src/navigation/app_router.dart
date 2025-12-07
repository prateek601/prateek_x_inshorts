import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../injection/injection.dart';
import '../presentation/bookmarks_page/bookmarks_view.dart';
import '../presentation/details_page/bloc/details_bloc.dart';
import '../presentation/details_page/details_view.dart';
import '../presentation/home_page/bloc/home_bloc.dart';
import '../presentation/home_page/home_view.dart';
import '../presentation/main_navigation/main_navigation_view.dart';
import '../presentation/search_page/search_view.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return MainNavigationView(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider<HomeBloc>(
              create:
                  (BuildContext context) =>
                      getIt<HomeBloc>()
                        ..add(const HomeEvent.fetchNowPlayingMovies()),
              child: const HomeView(),
            );
          },
        ),
        GoRoute(
          path: '/search',
          builder: (BuildContext context, GoRouterState state) {
            return const SearchView();
          },
        ),
        GoRoute(
          path: '/bookmarks',
          builder: (BuildContext context, GoRouterState state) {
            return const BookmarksView();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/movie/:movieId',
      builder: (BuildContext context, GoRouterState state) {
        final String movieIdParam = state.pathParameters['movieId'] ?? '';
        final int movieId = int.tryParse(movieIdParam) ?? 0;
        return BlocProvider<DetailsBloc>(
          create:
              (BuildContext context) =>
                  getIt<DetailsBloc>()
                    ..add(DetailsEvent.fetchDetails(movieId: movieId)),
          child: DetailsView(movieId: movieId),
        );
      },
    ),
  ],
);

