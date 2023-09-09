import 'package:flutter/material.dart';
import 'package:flutter_my_repository/router/app_router.dart';
import 'package:flutter_my_repository/ui/screens/text_theme.dart';
import 'package:flutter_my_repository/ui/theme/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.onGenerateRoute,
          initialRoute: MainScreen.screenId,
          theme: CustomTheme.lightTheme,
        );
      },
    );
  }
}
