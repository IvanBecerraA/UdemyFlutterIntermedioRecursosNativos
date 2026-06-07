import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/domain/domain.dart';
import 'package:miscelaneos/infraestructure/infraestructure.dart';



final pokemonsRepositoryProvider = Provider<PokemonsRepository>((ref) {
  return PokemonsRepositoryImpl();
});


final pokemonProvider = FutureProvider.family<Pokemon, String>((ref, id) async {

  final PokemonsRepository = ref.watch(pokemonsRepositoryProvider);

  final (pokemon, error) = await PokemonsRepository.getPokemon(id);

  if (pokemon != null) return pokemon;

  throw error;
});