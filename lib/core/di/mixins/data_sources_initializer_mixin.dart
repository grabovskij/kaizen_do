import 'package:flutter/widgets.dart';
import 'package:kaizen_do/core/di/app_data_sources_provider.dart';
import 'package:kaizen_do/data/local/todo_local_data_source/todo_local_data_source.dart';

mixin DataSourceInitializer on State<AppDataSourcesProvider> {
  late final TodoLocalDataSource todoLocalDataSource;

  @override
  void initState() {
    todoLocalDataSource = TodoLocalDataSource();

    super.initState();
  }
}
