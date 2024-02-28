import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mixins/data_sources_initializer_mixin.dart';

class AppDataSourcesProvider extends StatefulWidget {
  final Widget child;

  const AppDataSourcesProvider({
    required this.child,
    super.key,
  });

  @override
  State<AppDataSourcesProvider> createState() => _AppDataSourcesProviderState();
}

class _AppDataSourcesProviderState extends State<AppDataSourcesProvider>
    with DataSourceInitializer {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: todoLocalDataSource),
      ],
      child: widget.child,
    );
  }
}
