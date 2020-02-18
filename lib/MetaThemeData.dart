import 'package:flutter/material.dart';

import 'ColorTools.dart';
import 'Meta.dart';

class MetaThemeData
{
    static ThemeData createMaterialTheme({
        @required bool createDarkTheme,
        @required Color color,
        TextStyle textStyleBody1,
        TextStyle textStyleButton,
        TextStyle textStyleSubhead,
    })
    {
        assert(createDarkTheme != null);

        return createMaterialThemeWithBrightness(
            brightness: Meta.brightness == null ? createDarkTheme ? Brightness.dark : Brightness.light : Meta.brightness,
            color: color,
            textStyleBody1: textStyleBody1,
            textStyleButton: textStyleButton,
            textStyleSubhead: textStyleSubhead,
        );
    }

    static ThemeData createMaterialThemeWithBrightness({
        @required Brightness brightness,
        @required Color color,
        TextStyle textStyleBody1,
        TextStyle textStyleButton,
        TextStyle textStyleSubhead,
    })
    {
        assert(brightness != null);

        final MaterialColor materialColor = ColorTools.createMaterialColor(color);

        return ThemeData(
            brightness: brightness,

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
