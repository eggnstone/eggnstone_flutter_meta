import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../Tools/WidgetbookTools.dart';

@widgetbook_annotation.UseCase(name: '<normal>', type: MetaSwitchListTile)
Widget buildMetaSwitchListTile(BuildContext context)
=> Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            Row(
                children: <Widget>[
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: false, isEnabled: true, value: false, design: MetaDesign.Material)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: false, isEnabled: true, value: true, design: MetaDesign.Material)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: true, isEnabled: true, value: false, design: MetaDesign.Material)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: true, isEnabled: true, value: true, design: MetaDesign.Material))
                ]
            ),
            const SizedBox(height: 16),
            Row(
                children: <Widget>[
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: false, isEnabled: false, value: false, design: MetaDesign.Material)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: false, isEnabled: false, value: true, design: MetaDesign.Material)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: true, isEnabled: false, value: false, design: MetaDesign.Material)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: true, isEnabled: false, value: true, design: MetaDesign.Material))
                ]
            ),
            const SizedBox(height: 16),
            Row(
                children: <Widget>[
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: false, isEnabled: true, value: false, design: MetaDesign.Cupertino)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: false, isEnabled: true, value: true, design: MetaDesign.Cupertino)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: true, isEnabled: true, value: false, design: MetaDesign.Cupertino)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: true, isEnabled: true, value: true, design: MetaDesign.Cupertino))
                ]
            ),
            const SizedBox(height: 16),
            Row(
                children: <Widget>[
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: false, isEnabled: false, value: false, design: MetaDesign.Cupertino)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: false, isEnabled: false, value: true, design: MetaDesign.Cupertino)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: true, isEnabled: false, value: false, design: MetaDesign.Cupertino)),
                    const SizedBox(width: 16),
                    Expanded(child: _createMetaSwitchListTile(context, isDarkMode: true, isEnabled: false, value: true, design: MetaDesign.Cupertino))
                ]
            )
        ]
    )
);

Widget _createMetaSwitchListTile(
    BuildContext context, 
    {
        required bool isEnabled ,
        required bool isDarkMode,
        required bool value,
        required MetaDesign design
    })
{
    Meta.brightness = isDarkMode ? Brightness.dark : Brightness.light;
    Meta.forceDesign = design;
    return MetaSwitchListTile(
        title: const Text('Title'),
        subtitle: const Text('Subtitle'),
        value: value,
        onChanged: isEnabled ? WidgetbookTools.dummyOnChangedBool : null
    );
}
