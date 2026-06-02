import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final pokemonNameProvider = FutureProvider<String>((ref) async {
  final name = await PokemonService.getPokemonName(1);

  return name;
});