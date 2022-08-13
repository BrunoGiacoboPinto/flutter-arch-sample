// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoModel _$$_TodoModelFromJson(Map<String, dynamic> json) => _$_TodoModel(
      completed: json['completed'] as bool? ?? false,
      title: json['title'] as String,
      userId: json['userId'] as int,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_TodoModelToJson(_$_TodoModel instance) =>
    <String, dynamic>{
      'completed': instance.completed,
      'title': instance.title,
      'userId': instance.userId,
      'id': instance.id,
    };
