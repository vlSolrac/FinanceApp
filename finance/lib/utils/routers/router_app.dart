import 'package:finance/features/main/screens/main_screen.dart';
import 'package:finance/features/splash/screens/splash_screen.dart';
import 'package:finance/utils/routers/routers.dart';
import 'package:go_router/go_router.dart';

class RoutersApp {
  static final routers = GoRouter(
    initialLocation: CRouters.splash,
    routes: [
      GoRoute(
        path: CRouters.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: CRouters.main,
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );
}
