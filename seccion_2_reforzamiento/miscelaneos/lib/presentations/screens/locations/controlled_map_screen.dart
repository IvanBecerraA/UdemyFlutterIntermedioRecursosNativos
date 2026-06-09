import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/presentations/providers/providers.dart';



class ControlledMapScreen extends ConsumerWidget {
  const ControlledMapScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final watchUserLocation = ref.watch(watchLocationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ControlledMapScreen'),
      ),
      body: watchUserLocation.when(
        data: (data) => MapAndControls(latitude: data.$1, longitude: data.$2,), 
        error: (error, stackTrace) => Text('$error'), 
        loading: () => Center(child: Text('Ubicando usuario'),)
      ),
    );
  }
}


class MapAndControls extends StatelessWidget {

  final double latitude;
  final double longitude;

  const MapAndControls({super.key, required this.latitude, required this.longitude});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}