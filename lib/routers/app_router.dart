import 'package:go_router/go_router.dart';
import 'package:sunyoubin/screens/login_screen.dart';
import 'package:sunyoubin/screens/main_screen.dart';

class MyRoter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/$pathLogin',
        name: pathLogin,
        builder: (context, state) {
          return const LoginScreen(id: 'id');
        },
      ),
      GoRoute(
        path: '/$pathMain',
        name: pathMain,
        builder: (context, state) {
          final id = state.queryParameters['id'];

          return MainScreen(
            id: id ?? '',
          );
        },
      ),
    ],
  );

  static const pathLogin = 'login';
  static const pathMain = 'main';
}
