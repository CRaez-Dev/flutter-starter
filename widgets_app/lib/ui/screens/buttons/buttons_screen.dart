import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
  static const String name = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Elevated")),
              const ElevatedButton(onPressed: null, child: Text("Disabled")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.alarm_add_rounded),
                  label: const Text("Elevated Icon")),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new),
                label: const Text("Filled Icon"),
              ),
              OutlinedButton(onPressed: () {}, child: const Text('Outline')),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.dashboard_customize_outlined),
                label: const Text("Outlined Icon"),
              ),
              TextButton(onPressed: () {}, child: const Text('Text button')),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.dashboard_customize_outlined),
                label: const Text("TextButton Icon"),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.card_giftcard),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_rounded),
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    iconColor: MaterialStatePropertyAll(Colors.white)),
              ),
              // TODO: Custom button
            ],
          ),
        ),
      ),
    );
  }
}
