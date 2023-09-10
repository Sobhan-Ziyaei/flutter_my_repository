import 'package:flutter/material.dart';
import 'package:flutter_my_repository/ui/screens/button_screen.dart';
import 'package:flutter_my_repository/ui/screens/text_test_theme.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case TextTestTheme.screenId:
        return MaterialPageRoute(
          builder: (context) => const TextTestTheme(),
        );
      case ButtonScreen.screenId:
        return MaterialPageRoute(
          builder: (context) => const ButtonScreen(),
        );
      default:
        return null;
    }
  }
}

//----------------------------------------------------------------------------------------------------------------

//نحوه مدیریت روت‌های پروژه
// در ابتدا کلاس زیر را درست میکنیم

// class AppRouter {
//   Route<dynamic>? onGenerateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case MainScreen.screenId:
//         return MaterialPageRoute(
//           builder: (context) => const MainScreen(),
//         );
//       default:
//       return null ;
//     }
//   }
// }


//در هر کلاس باید این متغیر را تعریف کنیم -> static const screenId = '/اسم صفحه را قرار بده'; 
//سپس فایل اصلی را برای مدیریت روت ها به صورت زیر تعریف میکنیم
// void main() {
//   runApp(
//     MyApp(
//       appRouter: AppRouter(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key, required this.appRouter}) : super(key: key);
//   final AppRouter appRouter;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       onGenerateRoute: appRouter.onGenerateRoute,
//       initialRoute: MainScreen.screenId,
//     );
//   }
// }

//--------------------------------------------------------------------------------------------------------------