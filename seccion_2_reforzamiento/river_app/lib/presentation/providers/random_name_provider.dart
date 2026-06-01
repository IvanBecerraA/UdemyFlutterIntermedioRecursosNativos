import 'package:flutter_riverpod/legacy.dart';
import 'package:river_app/config/config.dart';



final randomNamesProvider = StateProvider.autoDispose<String>((ref) {
  // print('randomName Provider');
  return RandomGenerator.getRandomName();
});