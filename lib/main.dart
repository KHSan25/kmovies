import 'package:flutter/material.dart';
import 'package:k_movies/service/navigation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'K Movies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: NavigationService.goRouter,
    );
  }
}
