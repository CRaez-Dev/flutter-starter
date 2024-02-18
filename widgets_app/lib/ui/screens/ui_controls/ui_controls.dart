import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Aditional settings'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        // Radio List
        RadioListTile(
          title: const Text('by Car'),
          subtitle: const Text('Travel by Car'),
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.car;
            });
          },
        ),
        RadioListTile(
          title: const Text('by Plane'),
          subtitle: const Text('Travel by Plane'),
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.plane;
            });
          },
        ),
        RadioListTile(
          title: const Text('by Boat'),
          subtitle: const Text('Travel  by Boat'),
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.boat;
            });
          },
        ),
        RadioListTile(
          title: const Text('by Submarine'),
          subtitle: const Text('Travel by Submarine'),
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.submarine;
            });
          },
        )
      ],
    );
  }
}
