import 'package:flutter/material.dart';
import 'package:shcool/styles/palette_dark.dart';
import 'package:shcool/styles/palette_light.dart';

class MyTheme {
  static final PaletteLight _light = PaletteLight();
  static final PaletteDark _dark = PaletteDark();

//Tema claro
  static final ThemeData claro = ThemeData.light().copyWith(
    colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: _light.primary,
          secondary: _light.secondary,
          background: _light.backgroud,
          error: _light.error,
        ),
    primaryColor: _light.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: _light.primaryDark,
      titleTextStyle: TextStyle(
        color: _light.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith((states) => _light.primary),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? _light.primaryDark
            : _light.secondary;
      }),
      trackColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? _light.primaryDark
            : _light.secondary;
      }),
    ),
  );

//Tema escuro
  static final ThemeData escuro = ThemeData.dark().copyWith(
    colorScheme: ThemeData.dark().colorScheme.copyWith(
          primary: _dark.primary,
          secondary: _dark.warning,
          background: _dark.backgroud,
          error: _dark.error,
        ),
    primaryColor: _dark.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: _dark.primaryDark,
      titleTextStyle: TextStyle(
        color: _dark.text,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    cardColor: _dark.backgroudDark,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith((states) => _dark.primary),
    ),
    dialogTheme: DialogTheme(titleTextStyle: TextStyle(color: _dark.text)),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? _dark.primaryDark
            : _dark.secondary;
      }),
      trackColor: MaterialStateColor.resolveWith((states) {
        return states.contains(MaterialState.selected)
            ? _dark.primaryDark
            : _dark.secondary;
      }),
    ),
  );
}
