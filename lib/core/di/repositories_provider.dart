import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mixins/repositories_initializer_mixin.dart';

class AppRepositoriesProvider extends StatefulWidget {
  final Widget child;

  const AppRepositoriesProvider({
    required this.child,
    super.key,
  });

  @override
  State<AppRepositoriesProvider> createState() =>
      _AppRepositoriesProviderState();
}

class _AppRepositoriesProviderState extends State<AppRepositoriesProvider>
    with RepositoriesInitializer {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: todoRepository),
      ],
      child: widget.child,
    );
  }
}
