import 'package:flutter/material.dart';

import 'ColorTools.dart';
import 'Meta.dart';

class MetaThemeData
{
    static ThemeData createMaterialTheme({
        required BuildContext? context,
        required bool createDarkTheme,
        required Color? color,
        //Color appBarContentColorLight,
        //lor appBarContentColorDark,
        TextStyle? textStyleBody1,
        TextStyle? textStyleButton,
        TextStyle? textStyleSubhead,
    })
    {
        return createMaterialThemeWithBrightness(
            context: context,
            brightness: Meta.brightness == null ? createDarkTheme ? Brightness.dark : Brightness.light : Meta.brightness!,
            color: color,
            //appBarContentColorLight: appBarContentColorLight,
            //appBarContentColorDark: appBarContentColorDark,
            textStyleBody1: textStyleBody1,
            textStyleButton: textStyleButton,
            textStyleSubhead: textStyleSubhead,
        );
    }

    static ThemeData createMaterialThemeWithBrightness({
        required BuildContext? context,
        required Brightness brightness,
        required Color? color,
        //Color appBarContentColorLight,
        //Color appBarContentColorDark,
        TextStyle? textStyleBody1,
        TextStyle? textStyleButton,
        TextStyle? textStyleSubhead,
    })
    {
        final MaterialColor? materialColor = ColorTools.createMaterialColor(color);

        ThemeData? theme = context == null ? null : Theme.of(context);
        TextTheme? textTheme = theme?.textTheme;

        return ThemeData(
            brightness: brightness,

            appBarTheme: AppBarTheme(
                //textTheme: textTheme?.copyWith(title: textTheme.title.copyWith(color: brightness == Brightness.light ? appBarContentColorLight : appBarContentColorDark)),
                // Caution: also influences icons (but not the text) in popup menus which should always be black/white when brightness is light/dark.
                //iconTheme: IconThemeData(color: brightness == Brightness.light ? appBarContentColorLight : appBarContentColorDark),
                iconTheme: IconThemeData(color: brightness == Brightness.light ? Colors.black : Colors.white), toolbarTextStyle: textTheme?.copyWith(titleLarge: textTheme.titleLarge!.copyWith(color: brightness == Brightness.light ? Colors.black : Colors.white)).bodyMedium, titleTextStyle: textTheme?.copyWith(titleLarge: textTheme.titleLarge!.copyWith(color: brightness == Brightness.light ? Colors.black : Colors.white)).titleLarge,
            ),
            // AppBar-Material in dark mode
            primaryColor: color,

            textTheme: TextTheme(
                bodyMedium: textStyleBody1,
                labelLarge: textStyleButton,
                titleMedium: textStyleSubhead,
            ), textSelectionTheme: TextSelectionThemeData(cursorColor: color, selectionColor: color?.withOpacity(0.5), selectionHandleColor: color,), colorScheme: ColorScheme.fromSwatch(primarySwatch: materialColor).copyWith(secondary: color), checkboxTheme: CheckboxThemeData(
 fillColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
 if (states.contains(WidgetState.disabled)) { return null; }
 if (states.contains(WidgetState.selected)) { return color; }
 return null;
 }),
 ), radioTheme: RadioThemeData(
 fillColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
 if (states.contains(WidgetState.disabled)) { return null; }
 if (states.contains(WidgetState.selected)) { return color; }
 return null;
 }),
 ), switchTheme: SwitchThemeData(
 thumbColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
 if (states.contains(WidgetState.disabled)) { return null; }
 if (states.contains(WidgetState.selected)) { return color; }
 return null;
 }),
 trackColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
 if (states.contains(WidgetState.disabled)) { return null; }
 if (states.contains(WidgetState.selected)) { return color; }
 return null;
 }),
 ),
        );
    }
}
