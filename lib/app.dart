import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tetris/core/bloc.dart';
import 'package:tetris/core/router.dart' as route;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _getInitialData(),
        builder: (_, initial) {
          final router = route.Router.getRouter();
          return MultiBlocProvider(
              providers: [
                // BlocProvider<FeedCubit>(create: (_) => FeedCubit()),
                // BlocProvider<SearchCubit>(create: (_) => SearchCubit()),
                // BlocProvider<MemberCubit>(create: (_) => MemberCubit())
              ],
              child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                routeInformationProvider: router.routeInformationProvider,
                routeInformationParser: router.routeInformationParser,
                routerDelegate: router.routerDelegate,
              ));
        });
  }

  Future<Map<String, dynamic>> _getInitialData() async {
    return <String, dynamic>{};
  }
}