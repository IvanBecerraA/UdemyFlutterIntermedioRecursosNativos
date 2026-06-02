import 'package:flutter_riverpod/flutter_riverpod.dart';



final namesStreamProvider = StreamProvider<List<String>>((ref) async* {
  await Future.delayed(const Duration(seconds: 2));
  
  yield [];
  await Future.delayed(const Duration(seconds: 2));

  yield ['Sophia'];
  await Future.delayed(const Duration(seconds: 2));

  yield ['Sophia', 'Amelia'];
  await Future.delayed(const Duration(seconds: 2));

  yield ['Sophia', 'Amelia', 'Iván'];


});