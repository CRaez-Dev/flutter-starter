import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('data'),
      action: SnackBarAction(
        label: 'ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const  Text("Are you sure?"),
          
          content: const Text(
              'Id occaecat deserunt id et officia quis reprehenderit ut reprehenderit irure. Mollit voluptate amet magna anim sint excepteur culpa ea irure reprehenderit. Officia esse sunt exercitation dolore officia. Nisi voluptate laborum nulla laborum sunt qui consectetur id non excepteur fugiat laborum consequat. Cillum mollit cupidatat voluptate velit enim. Laborum duis voluptate dolore laboris consectetur fugiat velit dolor elit dolore.'),
          actions: [
            TextButton(onPressed: () => context.pop(), child: const Text('Cancel')),
            FilledButton(onPressed: () => context.pop(), child: const Text('Ok'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar and Dialog"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      "Nulla officia proident aliquip est quis mollit elit. Occaecat nostrud ut commodo anim Lorem labore minim exercitation enim tempor. Adipisicing sit magna cillum aliquip enim magna consequat ipsum reprehenderit.")
                ]);
              },
              child: const Text('Licenses')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show dialog'))
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text("Show snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
