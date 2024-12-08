import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../Tools/SwitchDefaultsM2.dart';
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
            Text('Disabled/Enabled', style: textStyleMedium),
            Text('Default/Custom Theme', style: textStyleMedium),
            Text('Auto/Light/Dark', style: textStyleSmall),
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
{
    final TextStyle textStyle = Theme.of(context).textTheme.titleMedium!;
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            Row(
                children: <Widget>[
                    /*SizedBox(width: 60, child: Text('Default', style: textStyle)),
                    const SizedBox(width: 8),*/
                    Expanded(child: _createSwitchesBlockByTheme(context,  metaDesign, isEnabled: isEnabled, useCustomTheme: false))
                ]
            ),
            Row(
                children: <Widget>[
                    /*SizedBox(width: 60, child: Text('Custom' , style: textStyle)),
                    const SizedBox(width: 8),*/
                    Expanded(child: _createSwitchesBlockByTheme(context,  metaDesign, isEnabled: isEnabled, useCustomTheme: true))
                ]
            )
        ]
    );
}

Widget _createSwitchesBlockByTheme(BuildContext context,  MetaDesign? metaDesign, {required bool isEnabled, required bool useCustomTheme})
=> Row(
    children: <Widget>[
        Expanded(
            child: Theme(
                data: useCustomTheme ? _createCustomThemeData(context) : _createDefaultThemeData(context),
                child: CupertinoTheme(
                    data: useCustomTheme ? _createCustomCupertinoThemeData(context) : _createDefaultCupertinoThemeData(context),
                    child: Row(
                        children: <Widget>[
                            Expanded(child: _createMetaSwitchListTile(context, value: false, isEnabled: isEnabled, design: metaDesign)),
                            Expanded(child: _createMetaSwitchListTile(context, value: true, isEnabled: isEnabled, design: metaDesign))
                        ]
                    )
                )
            )
        ),
        const SizedBox(width: 8),
        Expanded(
            child: Theme(
                data: useCustomTheme ? _createCustomLightThemeData(context) : _createDefaultLightThemeData(context),
                child: CupertinoTheme(
                    data: useCustomTheme ? _createCustomCupertinoLightThemeData(context) : _createDefaultCupertinoLightThemeData(context),
                    child: ColoredBox(
                        color: ThemeColors.BACKGROUND_COLOR_LIGHT,
                        child: Row(
                            children: <Widget>[
                                Expanded(child: _createMetaSwitchListTile(context, value: false, isEnabled: isEnabled, design: metaDesign)),
                                Expanded(child: _createMetaSwitchListTile(context, value: true, isEnabled: isEnabled, design: metaDesign))
                            ]
                        )
                    )
                )
            )
        ),
        const SizedBox(width: 8),
        Expanded(
            child: Theme(
                data: useCustomTheme ? _createCustomDarkThemeData(context) : _createDefaultDarkThemeData(context),
                child: CupertinoTheme(
                    data: useCustomTheme ? _createCustomCupertinoDarkThemeData(context) : _createDefaultCupertinoDarkThemeData(context),
                    child: ColoredBox(
                        color: ThemeColors.BACKGROUND_COLOR_DARK,
                        child: Row(
                            children: <Widget>[
                                Expanded(child: _createMetaSwitchListTile(context, value: false, isEnabled: isEnabled, design: metaDesign)),
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
    subtitle: const Text('Subtitle'),
    value: value,
    onChanged: isEnabled ? WidgetbookTools.dummyOnChangedBool : null
);

ThemeData _createDefaultLightThemeData(BuildContext context)
=> ThemeData(
    useMaterial3: false,
    brightness: Brightness.light
);

ThemeData _createDefaultDarkThemeData(BuildContext context)
=> ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark
);

ThemeData _createDefaultThemeData(BuildContext context)
=> ThemeData(
    useMaterial3: false
);

CupertinoThemeData _createDefaultCupertinoDarkThemeData(BuildContext context)
=> const CupertinoThemeData(
    brightness: Brightness.dark
);

CupertinoThemeData _createDefaultCupertinoLightThemeData(BuildContext context)
=> const CupertinoThemeData(
    brightness: Brightness.light
);

CupertinoThemeData _createDefaultCupertinoThemeData(BuildContext context)
=> const CupertinoThemeData();

CupertinoThemeData _createCustomCupertinoLightThemeData(BuildContext context)
=> const CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: ThemeColors.PRIMARY_COLOR_LIGHT,
    applyThemeToAll: true
);

CupertinoThemeData _createCustomCupertinoThemeData(BuildContext context)
=> const CupertinoThemeData(
    primaryColor: ThemeColors.PRIMARY_COLOR_AUTO,
    applyThemeToAll: true
);

CupertinoThemeData _createCustomCupertinoDarkThemeData(BuildContext context)
=> const CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: ThemeColors.PRIMARY_COLOR_DARK,
    applyThemeToAll: true
);

ThemeData _createCustomLightThemeData(BuildContext context)
=> ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    primaryColor: ThemeColors.PRIMARY_COLOR_LIGHT,
    switchTheme: _createSwitchThemeData(context, Brightness.light, ThemeColors.PRIMARY_COLOR_LIGHT)
);

ThemeData _createCustomThemeData(BuildContext context)
=> ThemeData(
    useMaterial3: false,
    primaryColor: ThemeColors.PRIMARY_COLOR_AUTO,
    switchTheme: _createSwitchThemeData(context, null, ThemeColors.PRIMARY_COLOR_AUTO)
);

ThemeData _createCustomDarkThemeData(BuildContext context)
=> ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    primaryColor: ThemeColors.PRIMARY_COLOR_DARK,
    switchTheme: _createSwitchThemeData(context, Brightness.dark, ThemeColors.PRIMARY_COLOR_DARK)
);

SwitchThemeData? _createSwitchThemeData(BuildContext context, Brightness? brightness, Color color)
=> SwitchDefaultsM2(context, brightness, color);
