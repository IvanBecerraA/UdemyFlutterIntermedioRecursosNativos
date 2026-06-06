import 'package:flutter/material.dart';


class GyroscopreScreen extends StatelessWidget {
  const GyroscopreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GyroscopreScreen'),
      ),
      body: const Center(
        child: Text('Hola'),
      ),
    );
  }
}