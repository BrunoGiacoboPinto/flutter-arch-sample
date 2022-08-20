import 'package:dio/dio.dart';
import 'package:flutter_arch_sample/shared/models/models.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'todo_data_source.g.dart';

@injectable
@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class TodoApi {
  factory TodoApi(Dio dio, {String baseUrl}) = _TodoApi;

  @GET('/todos/')
  Future<List<TodoModel>> getTodos();

  @GET('/todos/{id}')
  Future<TodoModel> getTodoById(@Path('id') int id);

  @factoryMethod
  static TodoApi create(Dio dio) => TodoApi(dio);
}

abstract class TodoDataSource {
  Future<List<TodoModel>> getTodos();
  Future<TodoModel> getTodoById(int id);
  Future<void> addTodo(TodoModel todo);
  Future<void> addAllTodos(List<TodoModel> todos);
}

@Named('InMemoryTodoDatSource')
@Injectable(as: TodoDataSource)
class InMemoryTodoDatSource implements TodoDataSource {
  final _cache = <int, TodoModel>{};

  @override
  Future<TodoModel> getTodoById(int id) async {
    final todo = _cache[id];
    return todo ?? (throw ArgumentError('Could not find todo with id $id'));
  }

  @override
  Future<List<TodoModel>> getTodos() async => List.from(_cache.values);

  @override
  Future<void> addAllTodos(List<TodoModel> todos) async {
    for (final todo in todos) {
      _cache[todo.id] = todo;
    }
  }

  @override
  Future<void> addTodo(TodoModel todo) async {
    _cache[todo.id] = todo;
  }

  void reset() {
    _cache.clear();
  }
}

@Named('RemoteTodoDataSource')
@Injectable(as: TodoDataSource)
class RemoteTodoDataSource implements TodoDataSource {
  RemoteTodoDataSource(this.todoApi);

  final TodoApi todoApi;

  @override
  Future<void> addAllTodos(List<TodoModel> todos) async {}

  @override
  Future<void> addTodo(TodoModel todo) async {}

  @override
  Future<TodoModel> getTodoById(int id) async => todoApi.getTodoById(id);

  @override
  Future<List<TodoModel>> getTodos() async => todoApi.getTodos();
}
