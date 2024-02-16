import 'package:flutter/material.dart';
import 'package:widgets_app/ui/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/ui/screens/card/cards_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> routesList(context) => {
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen(),
      };
}
