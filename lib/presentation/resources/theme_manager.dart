import 'package:coreflutterapp/presentation/resources/color_manager.dart';
import 'package:coreflutterapp/presentation/resources/font_manager.dart';
import 'package:coreflutterapp/presentation/resources/styles_manager.dart';
import 'package:coreflutterapp/presentation/resources/values_manager.dart';
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
        titleTextStyle:
            getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white)),
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
                borderRadius: BorderRadius.circular(AppSize.s12)))),
    //-------------------------------------------
    // text theme
    textTheme: TextTheme(
      displayLarge:
          getLightStyle(color: ColorManager.white, fontSize: FontSize.s22),
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.darkGrey, fontSize: FontSize.s16),
      titleMedium:
          getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      bodyLarge: getRegularStyle(color: ColorManager.grey2),
      bodySmall: getRegularStyle(color: ColorManager.grey),
    ),
    //---------------------------------------------------------
    /*input decoration theme is the text field or input field */
    //input decoration theme(text form field)
    inputDecorationTheme: InputDecorationTheme(
        //content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        //hint style
        hintStyle:
            getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        labelStyle:
            getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: ColorManager.error),
        // enabled  border or pressed on color and style
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s15),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused border or pressed on color and style
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSize.s15),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // error  border or color and style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s15),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    focusedErrorBorder: OutlineInputBorder(
        borderSide:
        BorderSide(color: ColorManager.primary, width: AppSize.s15),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    ),

    //-------------------------------------------
  );
}
