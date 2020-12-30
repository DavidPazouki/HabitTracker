import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Switch(
          value: false,
          onChanged: (bool state) {

          },
        )
      ),

    );
  }
}