import 'package:flutter/material.dart';
import 'package:flutter_arch_sample/list_todo/list_todo_use_case.dart';
import 'package:flutter_arch_sample/shared/models/result.dart';
import 'package:flutter_arch_sample/shared/models/todo.dart';

class ListTodoScreen extends StatefulWidget {
  const ListTodoScreen({super.key, required this.useCase});

  final ListTodoUseCase useCase;

  @override
  State<ListTodoScreen> createState() => _ListTodoScreenState();
}

class _ListTodoScreenState extends State<ListTodoScreen> {
  late final Future<Result<List<TodoModel>>> todoListFuture;

  @override
  void initState() {
    super.initState();
    todoListFuture = widget.useCase.getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: todoListFuture,
      builder: (BuildContext context, AsyncSnapshot<Result<List<TodoModel>>> snapshot) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: snapshot.connectionState == ConnectionState.waiting //
                  ? const CircularProgressIndicator()
                  : snapshot.data?.when<Widget>(
                      error: (message, error, stackTrace) {
                        return Text(message);
                      },
                      value: (todoList) {
                        List<TodoModel> list = todoList;
                        return ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            final todo = list[index];
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.blueAccent[100],
                                child: Text(
                                  todo.id.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              title: Text(todo.title),
                            );
                          },
                        );
                      },
                    ),
            ),
          ),
        );
      },
    );
  }
}
