import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Estas seguro?'),
              content: const Text(
                  'Sit eu quis laborum proident proident ea eu cillum tempor commodo ipsum minim. Sint consequat aute dolor nisi commodo aliqua quis excepteur sunt deserunt cupidatat consequat consectetur. Id sunt irure pariatur quis. Consequat sint veniam aliqua qui ad anim eiusmod dolor voluptate eiusmod irure consequat. Nostrud nostrud reprehenderit et Lorem veniam dolore elit eiusmod qui. Mollit aute anim cillum esse amet nulla tempor minim laboris nulla do. Ipsum est qui ullamco voluptate.'),
                  actions: [
                    TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),
                    FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar'))
                  ],
            )
            );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
        foregroundColor: colors.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, 
                  children: [
                    const Text(
                        'Occaecat quis magna ea occaecat ullamco sint in dolore mollit amet aute. Minim nulla esse veniam minim adipisicing irure dolore consectetur. Proident pariatur voluptate excepteur id eu labore deserunt ex commodo veniam.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
