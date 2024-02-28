import 'package:kaizen_do/data/local/todo_local_data_source/model/create_todo_model.dart';
import 'package:kaizen_do/data/local/todo_local_data_source/model/read_todo_model.dart';
import 'package:kaizen_do/domain/models/create_todo.dart';
import 'package:kaizen_do/domain/models/read_todo.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

part 'src/todo_local_data_source.dart';

abstract class TodoLocalDataSource {
  Future<void> open();

  Future<ReadTodo> insert(CreateTodo todo);

  Future<List<ReadTodo>> read();

  Future<int> update(ReadTodo todo);

  Future<int> delete(int id);

  Future<void> close();

  factory TodoLocalDataSource() => _TodoLocalDataSource();
}
