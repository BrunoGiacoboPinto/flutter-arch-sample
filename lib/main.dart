import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arch_sample/list_todo/list_todo_screen.dart';
import 'package:flutter_arch_sample/list_todo/list_todo_use_case.dart';
import 'package:flutter_arch_sample/shared/data/todo_data_source.dart';
import 'package:flutter_arch_sample/shared/data/todo_repository.dart';
import 'package:logger/logger.dart';

void main() {
  final logger = Logger(
    printer: PrettyPrinter(
      errorMethodCount: 8,
      printEmojis: false,
      lineLength: 120,
      methodCount: 2,
      colors: true
    ),
  );

  runZonedGuarded<void>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(const App());
    },
    (error, stackTrace) {
      if (kDebugMode) {
        logger.i('FAIL: $error\n$stackTrace', error, stackTrace);
      } else {
        logger.e('FAIL: $error\n$stackTrace', error, stackTrace);
      }
    },
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Architecture Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListTodoScreen(
        useCase: ListTodoUseCase(
          TodoRepository(
            RemoteTodoDataSource(TodoApi(Dio())),
            InMemmoryTodoDataSource(),
          ),
        ),
      ),
    );
  }
}
