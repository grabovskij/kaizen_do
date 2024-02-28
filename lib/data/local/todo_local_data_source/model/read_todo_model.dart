import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaizen_do/domain/models/read_todo.dart';

part 'read_todo_model.freezed.dart';
part 'read_todo_model.g.dart';

@freezed
class ReadTodoModel with _$ReadTodoModel {
  const factory ReadTodoModel({
    @Default(0) int id,
    @Default('') String title,
    @Default(0) int done,
  }) = _ReadTodoModel;

  factory ReadTodoModel.fromJson(Map<String, dynamic> json) =>
      _$ReadTodoModelFromJson(json);
}

extension ReadTodoToEntity on ReadTodoModel {
  ReadTodo toEntity() {
    return ReadTodo(
      id: id,
      title: title,
      done: switch (done) {
        1 => true,
        _ => false,
      },
    );
  }
}

extension ReadTodoToModel on ReadTodo {
  ReadTodoModel toModel() {
    return ReadTodoModel(
      id: id,
      title: title,
      done: switch (done) {
        true => 1,
        _ => 0,
      },
    );
  }
}
