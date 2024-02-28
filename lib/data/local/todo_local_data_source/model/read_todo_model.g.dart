// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadTodoModelImpl _$$ReadTodoModelImplFromJson(Map<String, dynamic> json) =>
    _$ReadTodoModelImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      done: json['done'] as int? ?? 0,
    );

Map<String, dynamic> _$$ReadTodoModelImplToJson(_$ReadTodoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'done': instance.done,
    };
