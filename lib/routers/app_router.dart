import 'package:go_router/go_router.dart';
import 'package:sunyoubin/screens/login_screen.dart';
import 'package:sunyoubin/screens/main_screen.dart';
import 'package:sunyoubin/screens/test_screen.dart';

class MyRoter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        name: pathLogin,
        builder: (context, state) {
          return const LoginScreen(id: 'id');
        },
      ),
      GoRoute(
        path: '/main',
        name: pathMain,
        builder: (context, state) {
          final id = state.queryParameters['id'];

          return MainScreen(
            id: id ?? '',
          );
        },
      ),
      GoRoute(
          path: '/test',
          name: pathTest,
          builder: (context, state) => const TestScreen()),
    ],
  );

  static const pathLogin = 'login';
  static const pathMain = 'main';
  static const pathTest = 'test';
}
