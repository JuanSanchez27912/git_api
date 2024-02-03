import 'package:flutter/material.dart';
import 'package:git_history/providers/commit_provider.dart';
import 'package:git_history/screens/main_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
      routes: [
        GoRoute(path: '/',
          builder: (context, state) {
            return const MainScreen();
          }
        ),
      ]
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CommitProvider()),
        ],
        child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        routerConfig: _router,
        ),
    );
  }
}