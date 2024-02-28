import 'package:flutter/widgets.dart';
import 'package:kaizen_do/core/di/repositories_provider.dart';
import 'package:kaizen_do/domain/repository/todo/todo_repository.dart';
import 'package:provider/provider.dart';

mixin RepositoriesInitializer on State<AppRepositoriesProvider> {
  late final TodoRepository todoRepository;

  @override
  void initState() {
    todoRepository = TodoRepository(context.read())..init();

    super.initState();
  }

  @override
  void dispose() {
    todoRepository.dispose();
    super.dispose();
  }
}
