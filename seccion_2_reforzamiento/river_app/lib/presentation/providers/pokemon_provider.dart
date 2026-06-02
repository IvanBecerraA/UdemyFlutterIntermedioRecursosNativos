import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokemonProvider = FutureProvider<String>((ref) async {
  return 'Ditto';
});