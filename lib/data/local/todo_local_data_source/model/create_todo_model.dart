import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaizen_do/domain/models/create_todo.dart';

part 'create_todo_model.freezed.dart';
part 'create_todo_model.g.dart';

@freezed
class CreateTodoModel with _$CreateTodoModel {
  const factory CreateTodoModel({
    required String title,
    required int done,
  }) = _CreateTodoModel;

  factory CreateTodoModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTodoModelFromJson(json);
}

extension CreateTodoModelToEntity on CreateTodoModel {
  CreateTodo toEntity() {
    return CreateTodo(
      title: title,
      done: switch (done) {
        1 => true,
        _ => false,
      },
    );
  }
}

extension CreateTodoModelToModel on CreateTodo {
  CreateTodoModel toModel() {
    return CreateTodoModel(
      title: title,
      done: switch (done) {
        true => 1,
        _ => 0,
      },
    );
  }
}
