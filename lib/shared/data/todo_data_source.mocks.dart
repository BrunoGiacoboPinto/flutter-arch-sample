// Mocks generated by Mockito 5.3.0 from annotations
// in flutter_arch_sample/shared/data/todo_data_source.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter_arch_sample/shared/data/todo_data_source.dart' as _i3;
import 'package:flutter_arch_sample/shared/models/models.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTodoModel_0 extends _i1.SmartFake implements _i2.TodoModel {
  _FakeTodoModel_0(Object parent, Invocation parentInvocation) : super(parent, parentInvocation);
}

/// A class which mocks [TodoDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTodoDataSource extends _i1.Mock implements _i3.TodoDataSource {
  MockTodoDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i2.TodoModel>> getTodos() => (super.noSuchMethod(Invocation.method(#getTodos, []), returnValue: _i4.Future<List<_i2.TodoModel>>.value(<_i2.TodoModel>[])) as _i4.Future<List<_i2.TodoModel>>);
  @override
  _i4.Future<_i2.TodoModel> getTodoById(int? id) => (super.noSuchMethod(Invocation.method(#getTodoById, [id]), returnValue: _i4.Future<_i2.TodoModel>.value(_FakeTodoModel_0(this, Invocation.method(#getTodoById, [id])))) as _i4.Future<_i2.TodoModel>);
  @override
  _i4.Future<void> addTodo(_i2.TodoModel? todo) => (super.noSuchMethod(Invocation.method(#addTodo, [todo]), returnValue: _i4.Future<void>.value(), returnValueForMissingStub: _i4.Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> addAllTodos(List<_i2.TodoModel>? todos) => (super.noSuchMethod(Invocation.method(#addAllTodos, [todos]), returnValue: _i4.Future<void>.value(), returnValueForMissingStub: _i4.Future<void>.value()) as _i4.Future<void>);
}
