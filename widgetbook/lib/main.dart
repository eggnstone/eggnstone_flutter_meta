import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

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
    {
        return Widgetbook.material(
            addons: [
                MaterialThemeAddon(
                    themes: [
                        WidgetbookTheme(
                            name: 'Dark',
                            data: MetaThemeData.createMaterialThemeWithBrightness(
                                context: context,
                                brightness: Brightness.dark,
                                color: Colors.green)
                        ),
                        WidgetbookTheme(
                            name: 'Light',
                            data: MetaThemeData.createMaterialThemeWithBrightness(
                                context: context,
                                brightness: Brightness.light,
                                color: Colors.red)
                        )
                    ]
                ),
                LocalizationAddon(
                    locales: [
                        const Locale('en', 'US'),
                        const Locale('de', 'DE')
                    ],
                    localizationsDelegates: [
                        DefaultWidgetsLocalizations.delegate,
                        DefaultMaterialLocalizations.delegate
                    ]
                ),
                TextScaleAddon(
                    initialScale: 1.0,
                    min: 1.0,
                    max: 2.0
                ),
                DeviceFrameAddon(
                    devices: [
                        Devices.android.samsungGalaxyS20,
                        Devices.ios.iPhone13
                    ]
                )
                //GridAddon()
            ],
            directories: directories
        );
    }
}
