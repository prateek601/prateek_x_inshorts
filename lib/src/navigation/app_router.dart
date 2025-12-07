import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../injection/injection.dart';
import '../presentation/details_page/bloc/details_bloc.dart';
import '../presentation/details_page/details_view.dart';
import '../presentation/home_page/bloc/home_bloc.dart';
import '../presentation/home_page/home_view.dart';

final GoRouter appRouter = GoRouter(
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
