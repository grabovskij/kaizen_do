import 'package:kaizen_do/data/local/todo_local_data_source/todo_local_data_source.dart';
import 'package:kaizen_do/domain/models/create_todo.dart';
import 'package:kaizen_do/domain/models/read_todo.dart';
import 'package:rxdart/rxdart.dart';

class TodoRepository {
  final TodoLocalDataSource todoLocalDataSource;

  final _todosSubject = BehaviorSubject<List<ReadTodo>>.seeded([]);

  TodoRepository(this.todoLocalDataSource);

  List<ReadTodo> get todos => _todosSubject.value;

  Stream<List<ReadTodo>> get todosStream => _todosSubject;

  Future<void> init() async {
    await todoLocalDataSource.open();
    await read();
  }

  Future<void> insert(CreateTodo todo) async {
    await todoLocalDataSource.insert(todo);
    await read();
  }

  Future<void> read() async {
    final todos = await todoLocalDataSource.read();

    _todosSubject.add(todos);
  }

  Future<void> update(ReadTodo todo) async {
    await todoLocalDataSource.update(todo);
    await read();
  }

  Future<void> delete(int id) async {
    await todoLocalDataSource.delete(id);
    await read();
  }

  Future<void> dispose() => todoLocalDataSource.close();
}
