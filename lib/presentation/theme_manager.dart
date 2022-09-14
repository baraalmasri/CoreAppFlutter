import 'package:coreflutterapp/presentation/color_manager.dart';
import 'package:coreflutterapp/presentation/font_manager.dart';
import 'package:coreflutterapp/presentation/styles_manager.dart';
import 'package:coreflutterapp/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

      //main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightprimary,
      primaryColorDark: ColorManager.darkprimary,
      /*for button not clickable  or need access */
      disabledColor: ColorManager.grey,
      //splash color when you press on any text button etc that will be the color while you are holding on
      splashColor: ColorManager.lightprimary,

      //-------------------------------------------
      // cardview theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s3,
      ),
      //-------------------------------------------
      //app bar theme
      appBarTheme: AppBarTheme(
          color: ColorManager.primary,
          elevation: AppSize.s3,
          shadowColor: ColorManager.lightprimary,
          titleTextStyle: getRegularStyle(
              fontSize: FontSize.s16, color: ColorManager.white)),
      //-------------------------------------------
      //button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.grey,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.lightprimary),
      //-------------------------------------------
      //elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                  color: ColorManager.white, fontSize: FontSize.s17),
              primary: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12))))
      //-------------------------------------------
      // text theme

      //-------------------------------------------
      //input decoration theme(text form field)

      //-------------------------------------------

      );
}
