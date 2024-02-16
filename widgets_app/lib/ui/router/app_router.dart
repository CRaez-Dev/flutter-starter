import 'package:go_router/go_router.dart';
import '../screens/screens.dart';

class AppRouter {  

  static final router = GoRouter(
    initialLocation: '/', 
    routes: [
      GoRoute(
        path: '/', 
        builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/buttons', 
        builder: (context, state) => const ButtonsScreen()),
      GoRoute(
        path: '/cards', 
        builder: (context, state) => const CardsScreen())
  ]);
}
