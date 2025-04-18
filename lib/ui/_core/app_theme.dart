import 'package:flutter/material.dart';
import 'package:myapp/ui/_core/app_colors.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStateColor.resolveWith((State) {
          if (State.contains(WidgetState.disabled)) {
            return Colors.grey;
          } else if (State.contains(WidgetState.pressed)) {
            return const Color.fromRGBO(171, 255, 164, 89);
          }
          return AppColors.mainColor;
        }),
      ),
    ),
  );
}
