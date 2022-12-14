import 'package:flutter_arch_sample/shared/data/data.dart';
import 'package:flutter_arch_sample/shared/models/result.dart';
import 'package:flutter_arch_sample/shared/models/todo.dart';
import 'package:injectable/injectable.dart';

@injectable
class ListTodoUseCase {
  ListTodoUseCase(@Named.from(TodoRepository) this.repository);

  final TodoDataSource repository;

  Future<Result<List<TodoModel>>> getTodos() async {
    try {
      return Result.value(value: await repository.getTodos());
    } catch (error, stackTrace) {
      return Result.error(message: 'Fail to load todo list', error: error, stackTrace: stackTrace);
    }
  }
}
