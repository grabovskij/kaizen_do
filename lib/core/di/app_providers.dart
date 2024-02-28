import 'package:flutter/material.dart';
import 'package:kaizen_do/core/di/app_data_sources_provider.dart';
import 'package:kaizen_do/core/di/repositories_provider.dart';

class AppProviders extends StatefulWidget {
  final Widget child;

  const AppProviders({
    required this.child,
    super.key,
  });

  @override
  State<AppProviders> createState() => _AppProvidersState();
}

class _AppProvidersState extends State<AppProviders> {
  @override
  Widget build(BuildContext context) {
    return AppDataSourcesProvider(
      child: AppRepositoriesProvider(
        child: widget.child,
      ),
    );
  }
}
