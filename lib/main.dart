import 'package:flutter/material.dart';
import 'package:flutter_my_repository/router/app_router.dart';
import 'package:flutter_my_repository/ui/screens/main_screen.dart';

void main() {
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.onGenerateRoute,
      initialRoute: MainScreen.screenId,
    );
  }
}
