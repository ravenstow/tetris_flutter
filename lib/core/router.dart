import 'package:go_router/go_router.dart';

enum Screen {welcome, game}

class Router {
  Router();

  static GoRouter getRouter() => GoRouter(routes: <GoRoute>[
    GoRoute(name: 'root', path: '/'),
    GoRoute(name: 'game', path: '/game'),
  ]);
}