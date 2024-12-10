// ignore: implementation_imports
import 'package:eggnstone_flutter_meta/src/Helpers/SwitchDefaultsM2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'ThemeColors.dart';

class ThemeTools
{
    // Default Material

    static ThemeData  createDefaultMaterialThemeData(BuildContext context, Brightness? brightness)
    {
        final bool isDark = (brightness ?? Theme.of(context).brightness) == Brightness.dark;
        final SwitchThemeData? switchTheme = isDark
            ? _createSwitchThemeData(context, Brightness.dark, Colors.tealAccent)
            : _createSwitchThemeData(context, Brightness.light, Colors.blue);

        return ThemeData(
            useMaterial3: false,
            switchTheme: switchTheme
        );
    }

    static ThemeData  createDefaultMaterialLightThemeData(BuildContext context)
    =>  createDefaultMaterialThemeData(context, Brightness.light);

    static  ThemeData  createDefaultMaterialDarkThemeData(BuildContext context)
    =>  createDefaultMaterialThemeData(context, Brightness.dark);

    // Custom Material

    static  ThemeData  createCustomMaterialThemeData(BuildContext context, Brightness? brightness)
    {
        final bool isDark = (brightness ?? Theme.of(context).brightness) == Brightness.dark;
        final Brightness finalBrightness = isDark ? Brightness.dark : Brightness.light;
        final Color primaryColor = isDark ? ThemeColors.PRIMARY_COLOR_DARK : ThemeColors.PRIMARY_COLOR_LIGHT;

        return  createDefaultMaterialThemeData(context, null).copyWith(
            primaryColor: primaryColor,
            switchTheme: _createSwitchThemeData(context, finalBrightness, primaryColor)
        );
    }

    static  ThemeData  createCustomMaterialLightThemeData(BuildContext context)
    =>  createDefaultMaterialThemeData(context,Brightness.light).copyWith(
        primaryColor: ThemeColors.PRIMARY_COLOR_LIGHT,
        switchTheme: _createSwitchThemeData(context, Brightness.light, ThemeColors.PRIMARY_COLOR_LIGHT)
    );

    static  ThemeData  createCustomMaterialDarkThemeData(BuildContext context)
    =>  createDefaultMaterialThemeData(context, Brightness.dark).copyWith(
        primaryColor: ThemeColors.PRIMARY_COLOR_DARK,
        switchTheme: _createSwitchThemeData(context, Brightness.dark, ThemeColors.PRIMARY_COLOR_DARK)
    );

    // Default Cupertino

    static  CupertinoThemeData  createDefaultCupertinoThemeData(BuildContext context, Brightness? brightness)
    => const CupertinoThemeData();

    static  CupertinoThemeData  createDefaultCupertinoLightThemeData(BuildContext context)
    => const CupertinoThemeData(
        brightness: Brightness.light
    );

    static  CupertinoThemeData  createDefaultCupertinoDarkThemeData(BuildContext context)
    => const CupertinoThemeData(
        brightness: Brightness.dark
    );

    // Custom Cupertino

    static  CupertinoThemeData  createCustomCupertinoThemeData(BuildContext context, Brightness? brightness)
    {
        final bool isDark = (brightness ?? Theme.of(context).brightness) == Brightness.dark;
        final Color primaryColor = isDark ? ThemeColors.PRIMARY_COLOR_DARK : ThemeColors.PRIMARY_COLOR_LIGHT;
        return  CupertinoThemeData(
            primaryColor: primaryColor,
            applyThemeToAll: true
        );
    }

    static CupertinoThemeData  createCustomCupertinoLightThemeData(BuildContext context)
    =>  const CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: ThemeColors.PRIMARY_COLOR_LIGHT,
        applyThemeToAll: true
    );

    static  CupertinoThemeData  createCustomCupertinoDarkThemeData(BuildContext context)
    => const CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: ThemeColors.PRIMARY_COLOR_DARK,
        applyThemeToAll: true
    );

    static  SwitchThemeData? _createSwitchThemeData(BuildContext context, Brightness? brightness, Color color)
    => SwitchDefaultsM2(context, brightness, color);
}
