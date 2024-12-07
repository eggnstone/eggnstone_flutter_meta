import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../Tools/WidgetbookTools.dart';

@widgetbook_annotation.UseCase(name: '<normal>', type: MetaSwitchListTile)
Widget buildMetaSwitchListTile(BuildContext context)
{
    final TextStyle textStyle = Theme.of(context).textTheme.titleLarge!;
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
                Text('Enabled, Material', style: textStyle),
                const SizedBox(height: 8),
                Row(
                    children: <Widget>[
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: true, value: false, design: MetaDesign.Material, brightness: Brightness.light)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: true, value: true, design: MetaDesign.Material, brightness: Brightness.light)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: true, value: false, design: MetaDesign.Material, brightness: Brightness.dark)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: true, value: true, design: MetaDesign.Material, brightness: Brightness.dark))
                    ]
                ),
                const SizedBox(height: 32),
                Text('Disabled, Material', style: textStyle),
                Row(
                    children: <Widget>[
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: false, value: false, design: MetaDesign.Material, brightness: Brightness.light)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: false, value: true, design: MetaDesign.Material, brightness: Brightness.light)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: false, value: false, design: MetaDesign.Material, brightness: Brightness.dark)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: false, value: true, design: MetaDesign.Material, brightness: Brightness.dark)),                       const SizedBox(width: 32),
                    ]
                ),
                const SizedBox(height: 32),
                Text('Enabled, Cupertino', style: textStyle),
                Row(
                    children: <Widget>[
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: true, value: false, design: MetaDesign.Cupertino, brightness: Brightness.light)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: true, value: true, design: MetaDesign.Cupertino, brightness: Brightness.light)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: true, value: false, design: MetaDesign.Cupertino, brightness: Brightness.dark)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: true, value: true, design: MetaDesign.Cupertino, brightness: Brightness.dark)),
                    ]
                ),
                const SizedBox(height: 32),
                Text('Disabled, Cupertino', style: textStyle),
                Row(
                    children: <Widget>[
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: false, value: false, design: MetaDesign.Cupertino, brightness: Brightness.light)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: false, value: true, design: MetaDesign.Cupertino, brightness: Brightness.light)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: false, value: false, design: MetaDesign.Cupertino, brightness: Brightness.dark)),
                        const SizedBox(width: 32),
                        Expanded(child: _createMetaSwitchListTile(context, isEnabled: false, value: true, design: MetaDesign.Cupertino, brightness: Brightness.dark)),
                    ]
                )
            ]
        )
    );
}

Widget _createMetaSwitchListTile(
    BuildContext context, 
    {
        required bool isEnabled ,
        required bool value,
        required Brightness brightness,
        required MetaDesign design
    })
=> MetaSwitchListTile(
    brightness: brightness,
    design: design,
    title: const Text('Title'),
    subtitle: const Text('Subtitle'),
    value: value,
    onChanged: isEnabled ? WidgetbookTools.dummyOnChangedBool : null
);
