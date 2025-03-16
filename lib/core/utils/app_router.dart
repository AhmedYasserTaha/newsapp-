import 'package:go_router/go_router.dart';
import 'package:news_app/presentation/screens/home/home_screen.dart';

abstract class AppRouter {
  static const khomeView = '/';
  // static const khomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: khomeView,
        builder: (context, state) => const HomeScreen(),
      ),
      // GoRoute(
      //   path: khomeView,
      //   builder: (context, state) => const HomeScreen(),
      // ),
    ],
  );
}
