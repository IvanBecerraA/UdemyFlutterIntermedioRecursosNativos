import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/presentations/providers/providers.dart';



class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permisos'),
      ),
      body: _PermissionsView(),
    );
  }
}

class _PermissionsView extends ConsumerWidget {
  const _PermissionsView();

  @override
  Widget build(BuildContext context, ref) {

    final permissions = ref.watch(permissionsProvider);

    return ListView(
      children: [
        
        CheckboxListTile(
          value: permissions.cameraGranted, 
          title: const Text('Cámara'),
          subtitle: Text('${permissions.camera}'),
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestCameraAccess();
          }),
      ],
    );
  }
}