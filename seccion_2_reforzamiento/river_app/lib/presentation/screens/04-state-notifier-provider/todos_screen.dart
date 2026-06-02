import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class TodosScreen extends ConsumerWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de invitados'),
      ),
      body: const _TodosView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add ),
        onPressed: () {
          
        },
      ),
    );
  }
}


class _TodosView extends ConsumerWidget {
  const _TodosView();

  @override
  Widget build(BuildContext context, WidgetRef ref ) {

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        

        return SwitchListTile(
          title: const Text( 'Juan Carlos' ),
          value: (index % 2 == 0), // True o False 
          onChanged: ( value ) {
            
          }
        );
      },
    );
  }
}