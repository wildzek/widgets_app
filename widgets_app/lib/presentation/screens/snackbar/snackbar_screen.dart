import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
        content: const Text('Hola Mundo'),
        action: SnackBarAction(label: 'Ok!', onPressed: () {}),
        duration: const Duration(seconds: 2));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
            title: const Text('¿Estás seguro?'),
            content: const Text(
                'Officia irure laborum irure excepteur nisi. Magna aliqua et ea esse id in tempor Lorem ipsum adipisicing pariatur officia eiusmod quis. Occaecat et aliqua incididunt deserunt. Fugiat quis velit non dolore laboris mollit. Officia labore sint ea eu officia.'),
            actions: [
              TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
              FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar'))
            ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Quis Lorem consequat enim laboris ea ut voluptate ut dolor irure in. Nulla eiusmod veniam ut in ex cupidatat ea ipsum veniam in nulla non laboris quis. Ea laboris sit adipisicing occaecat cupidatat nisi. Occaecat officia sint voluptate minim proident veniam ullamco ad nostrud mollit.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            const SizedBox(height: 10),
            FilledButton.tonal(
                onPressed: () => openDialog(context), child: const Text('Mostrar diálogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}
