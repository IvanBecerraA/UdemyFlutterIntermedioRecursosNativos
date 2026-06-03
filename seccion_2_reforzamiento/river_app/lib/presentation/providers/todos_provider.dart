import 'package:flutter_riverpod/legacy.dart';
import 'package:river_app/config/helpers/random_generator.dart';
import 'package:uuid/uuid.dart';

import 'package:river_app/domain/domain.dart';



const _uuid = Uuid();

final todosProvider = StateNotifierProvider<TodosNotifier, List<Todo> >((ref) {
  return TodosNotifier();
});


class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier(): super([
    Todo(id: _uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    Todo(id: _uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    Todo(id: _uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
    Todo(id: _uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
  ]);
}