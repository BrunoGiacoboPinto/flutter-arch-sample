import 'package:flutter_arch_sample/shared/models/models.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'todo_data_source.dart';

@injectable
class TodoRepository implements TodoDataSource {
  TodoRepository(
    @Named('RemoteTodoDataSource') this.remoteTodoDataSource,
    @Named('InMemoryTodoDatSource') this.inMemmoryTodoDataSource,
  );

  final TodoDataSource remoteTodoDataSource;
  final TodoDataSource inMemmoryTodoDataSource;

  final _logger = Logger();

  @override
  Future<void> addAllTodos(List<TodoModel> todos) async {
    inMemmoryTodoDataSource.addAllTodos(todos);
  }

  @override
  Future<void> addTodo(TodoModel todo) async {
    inMemmoryTodoDataSource.addTodo(todo);
  }

  @override
  Future<TodoModel> getTodoById(int id) async {
    TodoModel? todo;

    try {
      todo = await inMemmoryTodoDataSource.getTodoById(id);
    } on ArgumentError {
      final remoteTodo = await remoteTodoDataSource.getTodoById(id);
      await inMemmoryTodoDataSource.addTodo(remoteTodo);
      todo = await inMemmoryTodoDataSource.getTodoById(id);
    } catch (error, stackTrace) {
      _logger.e('Fail to get todo with Id $id', error, stackTrace);
    }

    return todo ?? (throw ArgumentError('Could not find todo with id $id'));
  }

  @override
  Future<List<TodoModel>> getTodos() async {
    List<TodoModel> todos = await inMemmoryTodoDataSource.getTodos();

    if (todos.isEmpty) {
      try {
        final remoteTodos = await remoteTodoDataSource.getTodos();
        await inMemmoryTodoDataSource.addAllTodos(remoteTodos);
        todos = await inMemmoryTodoDataSource.getTodos();
      } catch (error, stackTrace) {
        _logger.e('Fail to get all todos', error, stackTrace);
      }
    }

    return todos;
  }
}
