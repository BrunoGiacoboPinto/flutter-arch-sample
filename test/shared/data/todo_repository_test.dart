import 'package:flutter_arch_sample/shared/data/data.dart';
import 'package:flutter_arch_sample/shared/data/todo_data_source.dart';
import 'package:flutter_arch_sample/shared/di/dependencies.dart';
import 'package:flutter_arch_sample/shared/models/todo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'todo_repository_test.mocks.dart';

List<TodoModel> mockedTodoList({int count = 10}) {
  return [
    for (int i = 0; i < count; i++) TodoModel(title: 'Todo title $i', userId: i, id: i),
  ];
}

@GenerateMocks([RemoteTodoDataSource])
void main() {
  group('TodoRepository', () {
    final remoteDataSource = MockRemoteTodoDataSource();
    final inMemmoryDataSource = InMemoryTodoDatSource();

    setUp(() {
      reset(remoteDataSource);
      inMemmoryDataSource.reset();
    });

    test('should load all todos successfully', () async {
      final todoListMock = mockedTodoList();

      when(remoteDataSource.getTodos()).thenAnswer((_) async {
        return Future.delayed(const Duration(milliseconds: 300), () => todoListMock);
      });

      final repository = TodoRepository(remoteDataSource, inMemmoryDataSource);
      final todos = await repository.getTodos();

      verify(remoteDataSource.getTodos()).called(1);

      expect(todos, todoListMock);
      expect(await inMemmoryDataSource.getTodos(), todos);
    });

    test('should handle missing todo when its id is not found', () async {
      final todoListMock = mockedTodoList(count: 5);

      when(remoteDataSource.getTodos()).thenAnswer((_) async {
        return Future.delayed(const Duration(milliseconds: 300), () => todoListMock);
      });

      when(remoteDataSource.getTodoById(6)).thenThrow(ArgumentError());
      when(remoteDataSource.getTodoById(4)).thenAnswer((_) async => todoListMock[4]);

      final repository = TodoRepository(remoteDataSource, inMemmoryDataSource);

      expect(() async => await repository.getTodoById(6), throwsArgumentError);
      expect(await repository.getTodoById(4), await inMemmoryDataSource.getTodoById(4));
    });
  });

  group('TodoRepository in mocked environment', () {
    setUp(() {
      configureDependencies('mocked');
    });

    test('should load all todos normally', () async {
      final remoteDataSourceMokced = inject<TodoDataSource>();
      final inMemmoryDataSource = InMemoryTodoDatSource();

      final todoListMock = mockedTodoList();

      when(remoteDataSourceMokced.getTodos()).thenAnswer((_) async => todoListMock);

      final repository = TodoRepository(remoteDataSourceMokced, inMemmoryDataSource);
      final todos = await repository.getTodos();

      verify(remoteDataSourceMokced.getTodos()).called(1);

      expect(todos, todoListMock);
      expect(await inMemmoryDataSource.getTodos(), todos);
    });
  });
}
