import 'package:flutter/material.dart';

import '../ui/common/tokens/colors.dart';

class Themes {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ThemeData.dark().colorScheme.copyWith(
          brightness: Brightness.light,
          primary: ColorsTokens.primary,
          surfaceTint: ColorsTokens.primary,
        ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontWeight: FontWeight.w600),
      headline2: TextStyle(fontWeight: FontWeight.w600),
      headline3: TextStyle(fontWeight: FontWeight.w600),
      headline4: TextStyle(fontWeight: FontWeight.w600),
      headline5: TextStyle(fontWeight: FontWeight.w600),
      headline6: TextStyle(fontWeight: FontWeight.w300),
      subtitle1: TextStyle(fontWeight: FontWeight.w300),
      subtitle2: TextStyle(fontWeight: FontWeight.w600),
      bodyText1: TextStyle(fontWeight: FontWeight.w300),
      bodyText2: TextStyle(fontWeight: FontWeight.w600),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsTokens.primary,
        foregroundColor: ColorsTokens.white,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorsTokens.primary),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}
