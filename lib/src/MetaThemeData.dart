import 'package:flutter/material.dart';

import 'Helpers/SwitchDefaultsM2.dart';
import 'Meta.dart';
import 'Tools/ColorTools.dart';

class MetaThemeData
{
    @Deprecated('Meta.brightness will be removed in the future. Use createMaterialThemeWithBrightness() instead.')
    static ThemeData createMaterialTheme({
        required BuildContext? context,
        required bool createDarkTheme,
        required Color? color,
        //Color appBarContentColorLight,
        //Color appBarContentColorDark,
        TextStyle? textStyleBody1,
        TextStyle? textStyleButton,
        TextStyle? textStyleSubhead
    })
    => createMaterialThemeWithBrightness(
        context: context,
        brightness: Meta.brightness == null ? createDarkTheme ? Brightness.dark : Brightness.light : Meta.brightness!,
        color: color,
        //appBarContentColorLight: appBarContentColorLight,
        //appBarContentColorDark: appBarContentColorDark,
        textStyleBody1: textStyleBody1,
        textStyleButton: textStyleButton,
        textStyleSubhead: textStyleSubhead
    );

    static ThemeData createMaterialThemeWithBrightness({
        required BuildContext? context,
        required Brightness brightness,
        required Color? color,
        //Color appBarContentColorLight,
        //Color appBarContentColorDark,
        TextStyle? textStyleBody1,
        TextStyle? textStyleButton,
        TextStyle? textStyleSubhead
    })
    {
        final MaterialColor? materialColor = ColorTools.createMaterialColor(color);

        final ThemeData? theme = context == null ? null : Theme.of(context);
        final TextTheme? textTheme = theme?.textTheme;
        final TextStyle textStyleForAppBar = textTheme == null
            ? TextStyle(color: brightness == Brightness.light ? Colors.black : Colors.white)
            : textTheme.titleLarge!.copyWith(color: brightness == Brightness.light ? Colors.black : Colors.white);

        return ThemeData(
            useMaterial3: false,

            brightness: brightness,

            appBarTheme: AppBarTheme(
                //textTheme: textTheme?.copyWith(title: textTheme.title.copyWith(color: brightness == Brightness.light ? appBarContentColorLight : appBarContentColorDark)),
                // Caution: also influences icons (but not the text) in popup menus which should always be black/white when brightness is light/dark.
                //iconTheme: IconThemeData(color: brightness == Brightness.light ? appBarContentColorLight : appBarContentColorDark),

                // Migrated: textTheme: textTheme?.copyWith(headline6: textTheme.headline6!.copyWith(color: brightness == Brightness.light ? Colors.black : Colors.white)),
                // textTheme has been removed, and is replaced by either toolbarTextStyle or titleTextStyle.
                toolbarTextStyle: textStyleForAppBar.copyWith(color: Colors.red), // This is used for what?
                titleTextStyle: textStyleForAppBar, // This is used for text.

                iconTheme: IconThemeData(color: brightness == Brightness.light ? Colors.black : Colors.white)
            ),

            // TextField-Material base line in dark mode
            ////TODO: MIGRATE: accentColor: color,

            // text cursor
            ////TODO: MIGRATE: cursorColor: color,

            // AppBar-Material in dark mode
            primaryColor: color,

            // shade500 is primary color, shade600 is used for buttons in dark mode
            primarySwatch: materialColor,

            // text selection handles
            ////TODO: MIGRATE: textSelectionHandleColor: color,

            // selected text
            ////TODO: MIGRATE: textSelectionColor: color?.withOpacity(0.5),

            // Radio-Material, Checkbox-Material
            ////TODO: MIGRATE: toggleableActiveColor: color,

            // Migrated for Switch-Material: toggleableActiveColor: color,
            switchTheme: SwitchDefaultsM2.create(context, color),

            textTheme: TextTheme(
                // Migrated: bodyText2: textStyleBody1,
                bodyMedium: textStyleBody1,
                // Migrated: button: textStyleButton,
                labelLarge: textStyleButton,
                // Migrated: subtitle1: textStyleSubhead
                titleMedium: textStyleSubhead
            )
        );
    }
}
