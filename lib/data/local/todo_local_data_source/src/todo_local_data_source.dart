part of '../todo_local_data_source.dart';

class _TodoLocalDataSource implements TodoLocalDataSource {
  // Table properties
  final String tableTodoName = 'todo_table';
  final String columnId = 'id';
  final String columnTitle = 'title';
  final String columnDone = 'done';

  late Database database;

  @override
  Future<void> open() async {
    final databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'database.db');

    database = await openDatabase(
      path,
      version: 1,
      onCreate: (database, version) async {
        await database.execute(
          '''
            create table $tableTodoName (
              $columnId integer primary key autoincrement, 
              $columnTitle text not null,
              $columnDone integer not null
            )
          ''',
        );
      },
    );
  }

  @override
  Future<List<ReadTodo>> read() async {
    final records = await database.query(tableTodoName);

    return records.map((e) => ReadTodoModel.fromJson(e).toEntity()).toList();
  }

  @override
  Future<ReadTodo> insert(CreateTodo todo) async {
    final insertId = await database.insert(
      tableTodoName,
      todo.toModel().toJson(),
    );

    return ReadTodo(
      id: insertId,
      title: todo.title,
      done: todo.done,
    );
  }

  @override
  Future<int> update(ReadTodo todo) async {
    return database.update(
      tableTodoName,
      todo.toModel().toJson(),
      where: '$columnId = ?',
      whereArgs: [todo.id],
    );
  }

  @override
  Future<int> delete(int id) async {
    return database.delete(
      tableTodoName,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<void> close() => database.close();
}
