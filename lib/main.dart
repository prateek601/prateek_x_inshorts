import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/injection/injection.dart';
import 'src/presentation/home_page/bloc/home_bloc.dart';
import 'src/presentation/home_page/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        create:
            (BuildContext context) =>
                getIt<HomeBloc>()..add(const HomeEvent.fetchNowPlayingMovies()),
        child: const HomeView(),
      ),
    );
  }
}
