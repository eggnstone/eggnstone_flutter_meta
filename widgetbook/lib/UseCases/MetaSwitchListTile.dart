import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../Tools/ThemeColors.dart';
import '../Tools/ThemeTools.dart';
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
            Text('Auto/Light/Dark Brightness', style: textStyleSmall),
            Text('False/True Value', style: textStyleSmall),
            const SizedBox(height: 8),
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
            _createSwitchesBlockByState(context,  metaDesign, isEnabled: false),
            _createSwitchesBlockByState(context, metaDesign, isEnabled: true)
        ]
    );
}

Widget _createSwitchesBlockByState(BuildContext context, MetaDesign? metaDesign, {required bool isEnabled})
=> Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
        _createSwitchesBlockByTheme(context, metaDesign, isEnabled: isEnabled, useCustomTheme: false),
        _createSwitchesBlockByTheme(context, metaDesign, isEnabled: isEnabled, useCustomTheme: true)
    ]
);

Widget _createSwitchesBlockByTheme(BuildContext context, MetaDesign? metaDesign, {required bool isEnabled, required bool useCustomTheme})
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
                data: useCustomTheme ? ThemeTools.createCustomMaterialThemeData(context, null) : ThemeTools.createDefaultMaterialThemeData(context, null),
                child: CupertinoTheme(
                    data: useCustomTheme ? ThemeTools.createCustomCupertinoThemeData(context, null) : ThemeTools.createDefaultCupertinoThemeData(context, null),
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
                data: useCustomTheme ? ThemeTools.createCustomMaterialLightThemeData(context) : ThemeTools.createDefaultMaterialLightThemeData(context),
                child: CupertinoTheme(
                    data: useCustomTheme ? ThemeTools.createCustomCupertinoLightThemeData(context) : ThemeTools.createDefaultCupertinoLightThemeData(context),
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
                data: useCustomTheme ? ThemeTools.createCustomMaterialDarkThemeData(context) : ThemeTools.createDefaultMaterialDarkThemeData(context),
                child: CupertinoTheme(
                    data: useCustomTheme ? ThemeTools.createCustomCupertinoDarkThemeData(context) : ThemeTools.createDefaultCupertinoDarkThemeData(context),
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
