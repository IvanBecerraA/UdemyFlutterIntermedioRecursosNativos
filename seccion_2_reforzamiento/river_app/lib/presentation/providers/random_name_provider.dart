import 'package:flutter_riverpod/legacy.dart';



final randomNamesProvider = StateProvider<String>((ref) {
  print('randomName Provider');
  return 'Juan Carlos';
});