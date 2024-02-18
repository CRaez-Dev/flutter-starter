import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/ui/providers/theme_provider.dart';

class ThemeScreen extends ConsumerWidget {
  static const String name = "theme_screen";

  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isDarkMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(themeProvider.notifier).update((state) => !state);
              },
              icon: FadeIn(
                  child: isDarkMode
                      ? const Icon(Icons.dark_mode_outlined)
                      : const Icon(Icons.light_mode_outlined)))
        ],
      ),
      body: const _ThemeView(),
    );
  }
}

class _ThemeView extends ConsumerWidget {
  const _ThemeView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioListTile(
          title: Text(
            'Color : ',
            style: TextStyle(color: colors[index]),
          ),
          subtitle: Text('${color.value}'),
          activeColor: colors[index],
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read(selectedColorProvider.notifier).state = index;
          },
        );
      },
    );
  }
}
