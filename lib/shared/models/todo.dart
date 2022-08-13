import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    @Default(false) bool completed,
    required String title,
    required int userId,
    required int id,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, Object?> json) => _$TodoModelFromJson(json);
}
