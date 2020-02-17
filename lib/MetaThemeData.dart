import 'package:flutter/material.dart';

import 'Meta.dart';

class MetaThemeData
{
    static ThemeData createMaterialTheme({@required Color color, @required bool createDarkTheme})
    {
        assert(color != null);
        assert(createDarkTheme != null);

        final MaterialColor materialColor = MaterialColor(
            color.value,
            <int, Color>{
                50: Color(0xFFE3F2FD),
                100: Color(0xFFBBDEFB),
                200: Color(0xFF90CAF9),
                300: Color(0xFF64B5F6),
                400: Color(0xFF42A5F5),
                500: color,
                600: Color(0xFF1E88E5),
                700: Color(0xFF1976D2),
                800: Color(0xFF1565C0),
                900: Color(0xFF0D47A1),
            },
        );

        return ThemeData(
            brightness: Meta.brightness == null ? createDarkTheme ? Brightness.dark : Brightness.light : Meta.brightness,

            //accentColor: color,
            //buttonColor: color, TODO: blue in dark mode
            cursorColor: color,
            // text cursor
            primaryColor: color,
            // AppBar in dark mode
            primarySwatch: materialColor,
            textSelectionHandleColor: color,
            // text selection handles
            textSelectionColor: color.withOpacity(0.5),
            // selected text
            toggleableActiveColor: color, // SwitchMaterial, Radio, Checkbox
        );
    }
}

/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MetaThemeData
{
    //final Color accentColorMaterial;
    final Brightness brightness;

    //final Color cursorColorMaterial;
    final Color primaryColor;

    //final Color primarySwatchMaterial;

    //final Color textSelectionColorMaterial;
    //final Color textSelectionHandleColorMaterial;
    final TextStyle textStyleMaterialBody1;
    final TextStyle textStyleMaterialButton;
    final TextStyle textStyleMaterialSubhead;

    /// 1 [toggleableActiveColorMaterial] Radio, Checkbox, AutoSwitchTile-Android
    //final Color toggleableActiveColorMaterial;

    //final bool useDarkMode;

    /// 2 [toggleableActiveColorMaterial] Radio, Checkbox, AutoSwitchTile-Android
    MetaThemeData({
        //this.accentColorMaterial,
        this.brightness,
        //this.cursorColorMaterial,
        this.primaryColor,
        //this.primarySwatchMaterial,
        //this.textSelectionColorMaterial,
        //this.textSelectionHandleColorMaterial,
        this.textStyleMaterialBody1,
        this.textStyleMaterialButton,
        this.textStyleMaterialSubhead,
        // this.toggleableActiveColorMaterial,
        //this.useDarkMode
    });

    CupertinoThemeData getThemeCupertino()
    {
        print('getThemeCupertino: brightness: $brightness');

        //return MaterialBasedCupertinoThemeData();
        return CupertinoThemeData(
            brightness: brightness, //brightness, //useDarkMode == null ? null : useDarkMode ? Brightness.dark : Brightness.light,
            //brightness: useDarkMode == null ? null : useDarkMode ? Brightness.dark : Brightness.light,
            primaryColor: primaryColor,

            */
/*barBackgroundColor: primaryColor,
            //scaffoldBackgroundColor: Colors.red,


            primaryContrastingColor: accentColor,
            textTheme: CupertinoTextThemeData(
            ),*/ /*

        );
    }

    //ThemeData getThemeMaterial({@required BuildContext context, @required bool createDarkTheme})
    ThemeData getThemeMaterial({ @required bool createDarkTheme})
    {
        return createThemeMaterial(
            brightness: brightness == null ? (createDarkTheme == true ? Brightness.dark : createDarkTheme == false ? Brightness.light : null) : brightness,
            primaryColor: primaryColor,
        );
    }

    static ThemeData createThemeMaterial({Brightness brightness, Color primaryColor})
    {
        return ThemeData(
            brightness: brightness,

            accentColor: primaryColor,
            cursorColor: primaryColor,
            primaryColor: primaryColor,
            primarySwatch: createMaterialColor(primaryColor),
            textSelectionColor: primaryColor.withOpacity(0.5),
            textSelectionHandleColor: primaryColor,
            toggleableActiveColor: primaryColor,
        );
    }

    static MaterialColor createMaterialColor(Color color)
    {
        return MaterialColor(
            color.value,
            <int, Color>{
                50: Color(0xFFE3F2FD),
                100: Color(0xFFBBDEFB),
                200: Color(0xFF90CAF9),
                300: Color(0xFF64B5F6),
                400: Color(0xFF42A5F5),
                500: color,
                600: Color(0xFF1E88E5),
                700: Color(0xFF1976D2),
                800: Color(0xFF1565C0),
                900: Color(0xFF0D47A1),
            },
        );
    }
}
*/
