import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:k_movies/views/settings/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('K Movies'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              context.go(SettingScreen.routeName);
            },
            child: Text("GO"),
          ),
          ElevatedButton(
            onPressed: () {
              context.push(SettingScreen.routeName);
            },
            child: Text("PUSH"),
          )
        ],
      ),
    );
  }
}
