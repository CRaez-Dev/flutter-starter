import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import '../screens/screens.dart';

class AppRouter {
  static final router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
        name: HomeScreen.name,
        path: '/',
        builder: (context, state) => const HomeScreen()),
    ...appMenuItems.map((menuItem) => GoRoute(
        name: menuItem.name,
        path: menuItem.link,
        builder: (context, state) => menuItem.widget)),
  ]);
}
