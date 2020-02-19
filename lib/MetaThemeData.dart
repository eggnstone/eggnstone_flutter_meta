import 'package:flutter/material.dart';

import 'ColorTools.dart';
import 'Meta.dart';

class MetaThemeData
{
    static ThemeData createMaterialTheme({
        @required BuildContext context,
        @required bool createDarkTheme,
        @required Color color,
        Color appBarContentColorLight,
        Color appBarContentColorDark,
        TextStyle textStyleBody1,
        TextStyle textStyleButton,
        TextStyle textStyleSubhead,
    })
    {
        assert(createDarkTheme != null);

        return createMaterialThemeWithBrightness(
            context: context,
            brightness: Meta.brightness == null ? createDarkTheme ? Brightness.dark : Brightness.light : Meta.brightness,
            color: color,
            appBarContentColorLight: appBarContentColorLight,
            appBarContentColorDark: appBarContentColorDark,
            textStyleBody1: textStyleBody1,
            textStyleButton: textStyleButton,
            textStyleSubhead: textStyleSubhead,
        );
    }

    static ThemeData createMaterialThemeWithBrightness({
        @required BuildContext context,
        @required Brightness brightness,
        @required Color color,
        Color appBarContentColorLight,
        Color appBarContentColorDark,
        TextStyle textStyleBody1,
        TextStyle textStyleButton,
        TextStyle textStyleSubhead,
    })
    {
        assert(brightness != null);

        final MaterialColor materialColor = ColorTools.createMaterialColor(color);

        ThemeData theme = context == null ? null : Theme.of(context);
        TextTheme textTheme = theme?.textTheme;

        return ThemeData(
            brightness: brightness,

            appBarTheme: AppBarTheme(
                textTheme: textTheme?.copyWith(title: textTheme.title.copyWith(color: brightness == Brightness.light ? appBarContentColorLight : appBarContentColorDark)),
                iconTheme: IconThemeData(color: brightness == Brightness.light ? appBarContentColorLight : appBarContentColorDark),
            ),

            // TextField-Material base line in dark mode
            accentColor: color,
            // text cursor
            cursorColor: color,
            // AppBar-Material in dark mode
            primaryColor: color,
            // shade500 is primary color, shade600 is used for buttons in dark mode
            primarySwatch: materialColor,
            // text selection handles
            textSelectionHandleColor: color,
            // selected text
            textSelectionColor: color?.withOpacity(0.5),
            // Switch-Material, Radio-Material, Checkbox-Material
            toggleableActiveColor: color,

            textTheme: TextTheme(
                body1: textStyleBody1,
                button: textStyleButton,
                subhead: textStyleSubhead,
            ),
        );
    }
}
