import 'package:widgets_app/presentation/screens/screens.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'Ui Controls Screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),

        ExpansionTile(
            title: const Text('Vehículo de transporte'),
            subtitle: Text('$selectedTransportation'),
            children: [
              RadioListTile(
                  title: const Text('By car'),
                  subtitle: const Text('Viajar en coche'),
                  value: Transportation.car,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.car;
                      })),
              RadioListTile(
                  title: const Text('By boat'),
                  subtitle: const Text('Viajar en barco'),
                  value: Transportation.boat,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.boat;
                      })),
              RadioListTile(
                  title: const Text('By plane'),
                  subtitle: const Text('Viajar en avión'),
                  value: Transportation.plane,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.plane;
                      })),
              RadioListTile(
                  title: const Text('By submarine'),
                  subtitle: const Text('Viajar en submarino'),
                  value: Transportation.submarine,
                  groupValue: selectedTransportation,
                  onChanged: (value) => setState(() {
                        selectedTransportation = Transportation.submarine;
                      })),
            ]),
      ExpansionTile(
            title: const Text('Comidas en el transporte'),
            children: [  //TO DO
              CheckboxListTile(
                title: const Text('Quieres desayuno?'),
                subtitle: const Text('Marca la casilla'),
                value: wantsBreakfast,
                onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;
                }),
              ),
              CheckboxListTile(
                title: const Text('Quieres comida?'),
                subtitle: const Text('Marca la casilla'),
                value: wantsLunch,
                onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                }),
              ),
              CheckboxListTile(
                title: const Text('Quieres cena?'),
                subtitle: const Text('Marca la casilla'),
                value: wantsDinner,
                onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                }),
              ),
            ]
      )
      ],
    );
  }
}
