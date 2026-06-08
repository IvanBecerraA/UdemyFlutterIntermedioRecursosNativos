import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/presentations/providers/locations/user_location_provider.dart';



class LocationScreen extends ConsumerWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final userLocationAsync = ref.watch(userLocationProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubicación'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Current location
            const Text('Ubicación actual'),
            userLocationAsync.when(
              data: (data) => Text('$data'), 
              error: (error, stackTrace) => Text('$error'), 
              loading: () => CircularProgressIndicator()
            ),

            const SizedBox(height: 30,),
            // ! Current location
            const Text('Seguimiento de Ubicación'),

          ],
        ),
      ),
    );
  }
}