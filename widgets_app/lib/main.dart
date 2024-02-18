import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/ui/providers/theme_provider.dart';
import 'package:widgets_app/ui/router/app_router.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bool isDarkMode = ref.watch(themeProvider);
    final int selectedColor = ref.watch(selectedColorProvider);

    return MaterialApp.router(
      title: "Flutter Widgets",
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor, isDarkMode: isDarkMode).getTheme(),
      routerConfig: AppRouter.router,
    );
  }
}
