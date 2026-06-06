import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/presentations/providers/providers.dart';


class GyroscopreScreen extends ConsumerWidget {
  const GyroscopreScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final gyroscope$ = ref.watch(gyroscopreProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giroscópio'),
      ),
      body: Center(
        child: gyroscope$.when(
          data: (value) => Text(
            value.toString(),
            style: const TextStyle(fontSize: 20),
          ), 
          error: (error, stackTrace) => Text('$error'), 
          loading: () => const CircularProgressIndicator()
        ),
      ),
    );
  }
}