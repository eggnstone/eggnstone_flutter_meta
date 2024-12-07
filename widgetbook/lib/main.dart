import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'MetaDesignAddon.dart';
import 'main.directories.g.dart';

void main()
{
    runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget
{
    const WidgetbookApp({super.key});

    @override
    Widget build(BuildContext context)
    => Widgetbook.material(
        addons: <WidgetbookAddon>[
            MetaDesignAddon(),
            MaterialThemeAddon(
                themes: <WidgetbookTheme<ThemeData>>[
                    WidgetbookTheme<ThemeData>(
                        name: 'Dark',
                        data: MetaThemeData.createMaterialThemeWithBrightness(
                            context: context,
                            brightness: Brightness.dark,
                            color: Colors.green)
                    ),
                    WidgetbookTheme<ThemeData>(
                        name: 'Light',
                        data: MetaThemeData.createMaterialThemeWithBrightness(
                            context: context,
                            brightness: Brightness.light,
                            color: Colors.red)
                    )
                ]
            ),
            LocalizationAddon(
                locales: <Locale>[
                    const Locale('en', 'US'),
                    const Locale('de', 'DE')
                ],
                localizationsDelegates: <LocalizationsDelegate<dynamic>>[
                    DefaultWidgetsLocalizations.delegate,
                    DefaultMaterialLocalizations.delegate
                ]
            ),
            TextScaleAddon(
                divisions: 2,
                initialScale: 1,
                min: 1
            ),
            DeviceFrameAddon(
                devices: <DeviceInfo>[
                    Devices.android.samsungGalaxyS20,
                    Devices.ios.iPhone13
                ]
            )
        //GridAddon()
        ],
        directories: directories
    );
}
