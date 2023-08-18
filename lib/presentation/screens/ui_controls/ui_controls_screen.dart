import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = 'uicontrol_screen';

  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
        foregroundColor: colors.primary,
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
  Transportation selectedTranportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
          title: const Text('Vehiculo de Tranporte'),
          subtitle: Text('$selectedTranportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Viajar en carro'),
                value: Transportation.car,
                groupValue: selectedTranportation,
                onChanged: (value) => setState(() {
                      selectedTranportation = Transportation.car;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Viajar en bote'),
                value: Transportation.boat,
                groupValue: selectedTranportation,
                onChanged: (value) => setState(() {
                      selectedTranportation = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Viajar en avion'),
                value: Transportation.plane,
                groupValue: selectedTranportation,
                onChanged: (value) => setState(() {
                      selectedTranportation = Transportation.plane;
                    })),
            RadioListTile(
                title: const Text('By Submarine'),
                subtitle: const Text('Viajar en submarino'),
                value: Transportation.submarine,
                groupValue: selectedTranportation,
                onChanged: (value) => setState(() {
                      selectedTranportation = Transportation.submarine;
                    })),
          ],
        ),
        
        CheckboxListTile(
          title: const Text('Desayuno?'),
            value: wantsBreakfast,
            onChanged: (value) => setState(() {
                  wantsBreakfast = !wantsBreakfast;
                })),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),
        CheckboxListTile(
          title: const Text('Cena?'),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),
      ],
    );
  }
}
