import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('SettingPage'),
      ),
    );
  }
}
