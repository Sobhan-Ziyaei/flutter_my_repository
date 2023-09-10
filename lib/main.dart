import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_my_repository/router/app_router.dart';
import 'package:flutter_my_repository/ui/screens/button_screen.dart';
import 'package:flutter_my_repository/ui/screens/text_test_theme.dart';
import 'package:flutter_my_repository/ui/theme/colors.dart';
import 'package:flutter_my_repository/ui/theme/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  //------------------------------------------------------
  //برای اینکه در امولیتور بتوانیم تنظیمات دلخواه داشته باشیم
    SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: whiteColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: blackColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  //
  //-------------------------------------------------------
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
          initialRoute: ButtonScreen.screenId,
          theme: CustomTheme.lightTheme,
        );
      },
    );
  }
}
