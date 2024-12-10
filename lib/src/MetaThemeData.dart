import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Helpers/SwitchDefaultsM2.dart';
import 'Meta.dart';
import 'Tools/ColorTools.dart';

class MetaThemeData
{
    @Deprecated('Meta.brightness will be removed in the future. Use createMaterialThemeWithBrightness() instead.')
    static ThemeData createMaterialTheme({
        required BuildContext context,
        required bool createDarkTheme,
        required Color color
        //Color appBarContentColorLight,
        //Color appBarContentColorDark,
        /*TextStyle? textStyleBody1,
        TextStyle? textStyleButton,
        TextStyle? textStyleSubhead*/
    })
    => createMaterialThemeWithBrightness(
        context: context,
        brightness: Meta.brightness == null ? createDarkTheme ? Brightness.dark : Brightness.light : Meta.brightness!,
        color: color
        //appBarContentColorLight: appBarContentColorLight,
        //appBarContentColorDark: appBarContentColorDark,
        /*textStyleBody1: textStyleBody1,
        textStyleButton: textStyleButton,
        textStyleSubhead: textStyleSubhead*/
    );

    static ThemeData createMaterialThemeWithBrightness({
        required BuildContext context,
        required Brightness brightness,
        required Color color
        //Color appBarContentColorLight,
        //Color appBarContentColorDark,
        /*TextStyle? textStyleBody1,
        TextStyle? textStyleButton,
        TextStyle? textStyleSubhead*/
    })
    {
        //const MaterialColor? debugColor = kDebugMode ? Colors.pink : null;
        //final MaterialColor? materialColor = ColorTools.createMaterialColor(color);
        final Color colorForTextAndIcons = brightness == Brightness.light ? Colors.black : Colors.white;
        //final ThemeData theme = Theme.of(context);
        //final TextTheme textTheme = theme.textTheme;
        //final TextStyle textStyleForAppBarTitle = textTheme.titleLarge!.copyWith(color: colorForTextAndIcons);

        return ThemeData(
            useMaterial3: false,

            brightness: brightness,

            /*appBarTheme: AppBarTheme(
                //textTheme: textTheme?.copyWith(title: textTheme.title.copyWith(color: brightness == Brightness.light ? appBarContentColorLight : appBarContentColorDark)),
                // Caution: also influences icons (but not the text) in popup menus which should always be black/white when brightness is light/dark.
                //iconTheme: IconThemeData(color: brightness == Brightness.light ? appBarContentColorLight : appBarContentColorDark),

                // Migrated: textTheme: textTheme?.copyWith(headline6: textTheme.headline6!.copyWith(color: brightness == colorForTextAndIcons)),
                // textTheme has been removed, and is replaced by either toolbarTextStyle or titleTextStyle.
                //toolbarTextStyle: textStyleForAppBar.copyWith(color: ColorConstants.DEBUG_COLOR), // What is this used for?
                //foregroundColor: Colors.tealAccent, // What is this used for?
                titleTextStyle: textStyleForAppBarTitle,
                iconTheme: IconThemeData(color: colorForTextAndIcons),
                backgroundColor: color // primarySwatch sets the color for AppBar in light mode, but not in dark mode.
            ),*/

            // TextField-Material base line in dark mode
            ////TODO: MIGRATE: accentColor: color,
            //colorScheme: This seems to supersede the old color properties.

            colorScheme: ColorScheme(
                brightness: brightness,
                //
                primary: color, // button background, progress indicator, text field: cursor, thumb, underline
                secondary: color, // switch
                surface: color, // AppBar background
                //
                onPrimary: colorForTextAndIcons, // button foreground,
                onSurface: colorForTextAndIcons, // AppBar foreground
                //
                error: Colors.teal,
                onError: Colors.pink,
                onSecondary: Colors.pink,
            ),

            //canvasColor: Colors.pink, This is indeed the canvas color = background color of the Scaffold.
            //cardColor: Colors.green, This is indeed the card color = background color of the Card widget.

            // text cursor
            ////TODO: MIGRATE: cursorColor: color,

            // No: AppBar-Material in dark mode
            //primaryColor: debugColor, // This doesnt do anything. use primarySwatch instead

            // shade500 is the primary color
            // shade600 is used for                        buttons in dark  mode
            // shade??? is used for app bar background and buttons in light mode
            //primarySwatch: materialColor,

            // text selection handles
            ////TODO: MIGRATE: textSelectionHandleColor: color,

            // selected text
            ////TODO: MIGRATE: textSelectionColor: color?.withOpacity(0.5),

            // Radio-Material, Checkbox-Material
            ////TODO: MIGRATE: toggleableActiveColor: color,

            // Migrated for Switch-Material: toggleableActiveColor: color,
            //switchTheme: SwitchDefaultsM2(context, brightness, color)

            /*textTheme: TextTheme(
                // Migrated: bodyText2: textStyleBody1,
                bodyMedium: textStyleBody1,
                // Migrated: button: textStyleButton,
                labelLarge: textStyleButton,
                // Migrated: subtitle1: textStyleSubhead
                titleMedium: textStyleSubhead
            )*/
        );
    }
}
