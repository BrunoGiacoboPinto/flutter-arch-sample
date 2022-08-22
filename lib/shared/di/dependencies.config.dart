// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_arch_sample/list_todo/list_todo_use_case.dart' as _i4;
import 'package:flutter_arch_sample/shared/data/data.dart' as _i5;
import 'package:flutter_arch_sample/shared/data/todo_data_source.dart' as _i6;
import 'package:flutter_arch_sample/shared/data/todo_repository.dart' as _i7;
import 'package:flutter_arch_sample/shared/di/dependencies.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';
const String _mocked = 'mocked';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get, {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  final mockNetworkModeule = _$MockNetworkModeule();
  final mockTodoDataSourceModeule = _$MockTodoDataSourceModeule();
  gh.lazySingleton<_i3.Dio>(() => networkModule.dio, registerFor: {_prod});
  gh.factory<_i3.Dio>(() => mockNetworkModeule.dioMock, registerFor: {_mocked});
  gh.factory<_i6.TodoApi>(() => _i6.TodoApi.create(get<_i3.Dio>()));
  gh.factory<_i6.TodoDataSource>(() => _i6.InMemoryTodoDatSource(), instanceName: 'InMemoryTodoDatSource');
  gh.factory<_i6.TodoDataSource>(() => _i6.RemoteTodoDataSource(get<_i6.TodoApi>()), instanceName: 'RemoteTodoDataSource');
  gh.factory<_i6.TodoDataSource>(() => mockTodoDataSourceModeule.mockTodoDataSource, registerFor: {_mocked});
  gh.lazySingleton<_i6.TodoDataSource>(() => _i7.TodoRepository(get<_i6.TodoDataSource>(instanceName: 'RemoteTodoDataSource'), get<_i6.TodoDataSource>(instanceName: 'InMemoryTodoDatSource')), instanceName: 'TodoRepository');
  gh.factory<_i4.ListTodoUseCase>(() => _i4.ListTodoUseCase(get<_i5.TodoDataSource>(instanceName: 'TodoRepository')));
  return get;
}

class _$NetworkModule extends _i8.NetworkModule {}

class _$MockNetworkModeule extends _i8.MockNetworkModeule {}

class _$MockTodoDataSourceModeule extends _i6.MockTodoDataSourceModeule {}
