import 'package:flutter/material.dart';
import 'package:toktik/theme/app_theme.dart';
import 'package:toktik/ui/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TokTik',
      theme: Apptheme().getTheme(),
      home: const DiscoverScreen()
    );
  }
}