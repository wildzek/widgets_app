import 'package:widgets_app/presentation/screens/screens.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(content: const Text('Hola Mundo'), action: SnackBarAction(label: 'Ok!', onPressed: (){}), duration: const Duration(seconds: 2));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y diálogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}
