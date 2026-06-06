import 'package:flutter/material.dart';


class GyroscopreBallScreen extends StatelessWidget {
  const GyroscopreBallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GyroscopreBallScreen'),
      ),
      body: const Center(
        child: Text('Hola'),
      ),
    );
  }
}