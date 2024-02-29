import 'package:flutter/material.dart';
import 'package:kaizen_do/core/di/app_providers.dart';
import 'package:kaizen_do/features/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppProviders(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Kaizen Do'),
      ),
    );
  }
}
