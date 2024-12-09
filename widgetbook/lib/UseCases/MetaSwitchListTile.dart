import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
// ignore: implementation_imports
import 'package:eggnstone_flutter_meta/src/Helpers/SwitchDefaultsM2.dart'; 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../Tools/ThemeColors.dart';
import '../Tools/WidgetbookTools.dart';

@widgetbook_annotation.UseCase(name: '<normal>', type: MetaSwitchListTile)
Widget buildMetaSwitchListTile(BuildContext context)
=> Padding(
    padding: const EdgeInsets.all(8),
    child: SingleChildScrollView(child: _createSwitches(context))
);

Widget _createSwitches(BuildContext context)
{
    final TextTheme theme = Theme.of(context).textTheme;
    final TextStyle textStyleLarge = theme.titleLarge!;
    final TextStyle textStyleMedium = Theme.of(context).textTheme.titleMedium!;
    final TextStyle textStyleSmall = Theme.of(context).textTheme.titleSmall!;

    return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            Text('Design', style: textStyleLarge),
            Text('Disabled/Enabled State', style: textStyleMedium),
            Text('Default/Custom Theme', style: textStyleMedium),
            Text(/*'NoTheme/'+*/'Auto/Light/Dark Brightness', style: textStyleSmall),
            Text('False/True Value', style: textStyleSmall),
            const SizedBox(height: 8),
            _createSwitchesBlockByMetaDesign(context, 'Auto', null),
            _createSwitchesBlockByMetaDesign(context, 'Material', MetaDesign.Material),
            _createSwitchesBlockByMetaDesign(context, 'Cupertino', MetaDesign.Cupertino)
        ]
    );
}

Widget _createSwitchesBlockByMetaDesign(BuildContext context, String label, MetaDesign? metaDesign)
{
    final TextStyle textStyle = Theme.of(context).textTheme.titleLarge!;
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            Text(label, style: textStyle),
            _createSwitchesBlockByState(context,   metaDesign, isEnabled: false),
            _createSwitchesBlockByState(context,  metaDesign, isEnabled: true)
        ]
    );
}

Widget _createSwitchesBlockByState(BuildContext context,  MetaDesign? metaDesign, {required bool isEnabled})
=> Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
        _createSwitchesBlockByTheme(context,  metaDesign, isEnabled: isEnabled, useCustomTheme: false),
        _createSwitchesBlockByTheme(context,  metaDesign, isEnabled: isEnabled, useCustomTheme: true)
    ]
);

Widget _createSwitchesBlockByTheme(BuildContext context,  MetaDesign? metaDesign, {required bool isEnabled, required bool useCustomTheme})
=> Row(
    children: <Widget>[
        /*Expanded(
            child: Row(
                children: <Widget>[
                    Expanded(child: _createMetaSwitchListTile(context, value: false, isEnabled: isEnabled, design: metaDesign)),
                    const SizedBox(width: 8),
                    Expanded(child: _createMetaSwitchListTile(context, value: true, isEnabled: isEnabled, design: metaDesign))
                ]
            )
        ),*/
        const SizedBox(width: 16, height: 32, child: VerticalDivider()),
        Expanded(
            child: Theme(
                data: useCustomTheme ? _createCustomMaterialThemeData(context, null) : _createDefaultMaterialThemeData(context, null),
                child: CupertinoTheme(
                    data: useCustomTheme ? _createCustomCupertinoThemeData(context, null) : _createDefaultCupertinoThemeData(context, null),
                    child: Row(
                        children: <Widget>[
                            Expanded(child: _createMetaSwitchListTile(context, value: false, isEnabled: isEnabled, design: metaDesign)),
                            const SizedBox(width: 8),
                            Expanded(child: _createMetaSwitchListTile(context, value: true, isEnabled: isEnabled, design: metaDesign))
                        ]
                    )
                )
            )
        ),
        const SizedBox(width: 16, height: 32, child: VerticalDivider()),
        Expanded(
            child: Theme(
                data: useCustomTheme ? _createCustomMaterialLightThemeData(context) : _createDefaultMaterialLightThemeData(context),
                child: CupertinoTheme(
                    data: useCustomTheme ? _createCustomCupertinoLightThemeData(context) : _createDefaultCupertinoLightThemeData(context),
                    child: ColoredBox(
                        color: ThemeColors.BACKGROUND_COLOR_LIGHT,
                        child: Row(
                            children: <Widget>[
                                Expanded(child: _createMetaSwitchListTile(context, value: false, isEnabled: isEnabled, design: metaDesign)),
                                const SizedBox(width: 8),
                                Expanded(child: _createMetaSwitchListTile(context, value: true, isEnabled: isEnabled, design: metaDesign))
                            ]
                        )
                    )
                )
            )
        ),
        const SizedBox(width: 16, height: 32, child: VerticalDivider()),
        Expanded(
            child: Theme(
                data: useCustomTheme ? _createCustomMaterialDarkThemeData(context) : _createDefaultMaterialDarkThemeData(context),
                child: CupertinoTheme(
                    data: useCustomTheme ? _createCustomCupertinoDarkThemeData(context) : _createDefaultCupertinoDarkThemeData(context),
                    child: ColoredBox(
                        color: ThemeColors.BACKGROUND_COLOR_DARK,
                        child: Row(
                            children: <Widget>[
                                Expanded(child: _createMetaSwitchListTile(context, value: false, isEnabled: isEnabled, design: metaDesign)),
                                const SizedBox(width: 8),
                                Expanded(child: _createMetaSwitchListTile(context, value: true, isEnabled: isEnabled, design: metaDesign))
                            ]
                        )
                    )
                )
            )
        )
    ]
);

Widget _createMetaSwitchListTile(
    BuildContext context, 
    {
        required bool isEnabled ,
        required bool value,
        required MetaDesign? design
    })
=> MetaSwitchListTile(
    design: design,
    title: const Text('Title'),
    subtitle: const Text('Sub'),
    value: value,
    onChanged: isEnabled ? WidgetbookTools.dummyOnChangedBool : null
);

// Default Material

ThemeData _createDefaultMaterialThemeData(BuildContext context, Brightness? brightness)
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

ThemeData _createDefaultMaterialLightThemeData(BuildContext context)
=> _createDefaultMaterialThemeData(context, Brightness.light);

ThemeData _createDefaultMaterialDarkThemeData(BuildContext context)
=> _createDefaultMaterialThemeData(context, Brightness.dark);

// Custom Material

ThemeData _createCustomMaterialThemeData(BuildContext context, Brightness? brightness)
{
    final bool isDark = (brightness ?? Theme.of(context).brightness) == Brightness.dark;
    final Brightness finalBrightness = isDark ? Brightness.dark : Brightness.light;
    final Color primaryColor = isDark ? ThemeColors.PRIMARY_COLOR_DARK : ThemeColors.PRIMARY_COLOR_LIGHT;

    return _createDefaultMaterialThemeData(context, null).copyWith(
        primaryColor: primaryColor,
        switchTheme: _createSwitchThemeData(context, finalBrightness, primaryColor) 
    );
}

ThemeData _createCustomMaterialLightThemeData(BuildContext context)
=> _createDefaultMaterialThemeData(context,Brightness.light).copyWith(
    primaryColor: ThemeColors.PRIMARY_COLOR_LIGHT,
    switchTheme: _createSwitchThemeData(context, Brightness.light, ThemeColors.PRIMARY_COLOR_LIGHT)
);

ThemeData _createCustomMaterialDarkThemeData(BuildContext context)
=> _createDefaultMaterialThemeData(context, Brightness.dark).copyWith(
    primaryColor: ThemeColors.PRIMARY_COLOR_DARK,
    switchTheme: _createSwitchThemeData(context, Brightness.dark, ThemeColors.PRIMARY_COLOR_DARK)
);

// Default Cupertino

CupertinoThemeData _createDefaultCupertinoThemeData(BuildContext context, Brightness? brightness)
=> const CupertinoThemeData();

CupertinoThemeData _createDefaultCupertinoLightThemeData(BuildContext context)
=> const CupertinoThemeData(
    brightness: Brightness.light
);

CupertinoThemeData _createDefaultCupertinoDarkThemeData(BuildContext context)
=> const CupertinoThemeData(
    brightness: Brightness.dark
);

// Custom Cupertino

CupertinoThemeData _createCustomCupertinoThemeData(BuildContext context, Brightness? brightness)
{
    final bool isDark = (brightness ?? Theme.of(context).brightness) == Brightness.dark;
    final Color primaryColor = isDark ? ThemeColors.PRIMARY_COLOR_DARK : ThemeColors.PRIMARY_COLOR_LIGHT;
    return  CupertinoThemeData(
        primaryColor: primaryColor,
        applyThemeToAll: true
    );
}

CupertinoThemeData _createCustomCupertinoLightThemeData(BuildContext context)
=>  const CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: ThemeColors.PRIMARY_COLOR_LIGHT,
    applyThemeToAll: true
);

CupertinoThemeData _createCustomCupertinoDarkThemeData(BuildContext context)
=> const CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: ThemeColors.PRIMARY_COLOR_DARK,
    applyThemeToAll: true
);

SwitchThemeData? _createSwitchThemeData(BuildContext context, Brightness? brightness, Color color)
=> SwitchDefaultsM2(context, brightness, color);
