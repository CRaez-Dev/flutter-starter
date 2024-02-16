import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/ui/routes/routes.dart';
import 'package:widgets_app/ui/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes.routesList(context),
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      home: const HomeScreen(),
    );
  }
}
