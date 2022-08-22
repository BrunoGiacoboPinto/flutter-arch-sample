import 'package:dio/dio.dart';
import 'package:flutter_arch_sample/shared/data/todo_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([TodoDataSource, Dio])
import 'module.mocks.dart';

const mocked = Environment('mocked');

@module
abstract class MocksModule {
  @mocked
  Dio get dioMock => MockDio();

  @mocked
  TodoDataSource get mockTodoDataSource => MockTodoDataSource();
}
