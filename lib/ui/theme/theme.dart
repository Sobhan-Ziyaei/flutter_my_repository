import 'package:flutter/material.dart';
import 'package:flutter_my_repository/gen/fonts.gen.dart';
import 'package:flutter_my_repository/ui/styles/shapes.dart';
import 'package:flutter_my_repository/ui/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: whiteColor,
    // 
    //-----------------------------------------------------------------------------
    //Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: getShapeWidget(10),
        alignment: Alignment.center ,
        backgroundColor: primaryColor ,
        textStyle: TextStyle(
          color: whiteColor ,
          fontFamily: FontFamily.vazir ,
          fontWeight: FontWeight.bold ,
          fontSize: ScreenUtil().setWidth(12),
        ),
      ),
    ),



    //-----------------------------------------------------------------------------
    textTheme: TextTheme(
      //body Text
      //
      bodySmall: TextStyle(
        fontFamily: FontFamily.vazir,
        color: darkColor,
        fontSize: ScreenUtil().setWidth(10),
      ),
      bodyMedium: TextStyle(
        fontFamily: FontFamily.vazir,
        color: darkColor,
        fontSize: ScreenUtil().setWidth(12),
      ),
      bodyLarge: TextStyle(
        fontFamily: FontFamily.vazir,
        color: darkColor,
        fontSize: ScreenUtil().setWidth(14),
      ),
      //
      //--------------------------------------------------------------------------
      //title Text
      titleSmall: TextStyle(
        color: whiteColor,
        fontFamily: FontFamily.vazir,
        fontWeight: FontWeight.bold,
        fontSize: ScreenUtil().setWidth(12),
      ),
      titleMedium: TextStyle(
        color: whiteColor,
        fontFamily: FontFamily.vazir,
        fontWeight: FontWeight.bold,
        fontSize: ScreenUtil().setWidth(14),
      ),
      titleLarge: TextStyle(
        color: whiteColor,
        fontFamily: FontFamily.vazir,
        fontWeight: FontWeight.bold,
        fontSize: ScreenUtil().setWidth(16),
      ),
      //
      //--------------------------------------------------------------------------
      //label Text
      labelSmall: TextStyle(
        color: darkColor,
        fontFamily: FontFamily.vazir,
        fontWeight: FontWeight.bold,
        fontSize: ScreenUtil().setWidth(12),
      ),
      labelMedium: TextStyle(
        color: darkColor,
        fontFamily: FontFamily.vazir,
        fontWeight: FontWeight.bold,
        fontSize: ScreenUtil().setWidth(14),
      ),
      labelLarge: TextStyle(
        color: darkColor,
        fontFamily: FontFamily.vazir,
        fontWeight: FontWeight.bold,
        fontSize: ScreenUtil().setWidth(16),
      ),
      //
      //-------------------------------------------------------------------------
    ),
  );
}
