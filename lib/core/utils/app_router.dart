import 'package:go_router/go_router.dart';
import 'package:news_app/presentation/screens/home/home_details_screen.dart';
import 'package:news_app/presentation/screens/home/home_screen.dart';

abstract class AppRouter {
  static const khomeScreen = '/';
  static const khomeDetailsScreen = '/homeDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: khomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: khomeDetailsScreen,
        builder: (context, state) => const HomeDetailsScreen(),
      ),
    ],
  );
}
