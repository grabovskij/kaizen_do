// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTodoModelImpl _$$CreateTodoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTodoModelImpl(
      title: json['title'] as String,
      done: json['done'] as int,
    );

Map<String, dynamic> _$$CreateTodoModelImplToJson(
        _$CreateTodoModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'done': instance.done,
    };
