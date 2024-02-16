import 'package:go_router/go_router.dart';
import '../screens/screens.dart';

class AppRouter {  

  static final router = GoRouter(
    initialLocation: '/', 
    routes: [
      GoRoute(
        name: HomeScreen.name,
        path: '/', 
        builder: (context, state) => const HomeScreen()),
      GoRoute(
        name: ButtonsScreen.name,
        path: '/buttons', 
        builder: (context, state) => const ButtonsScreen()),
      GoRoute(
        name: CardsScreen.name,
        path: '/cards', 
        builder: (context, state) => const CardsScreen())
  ]);
}
