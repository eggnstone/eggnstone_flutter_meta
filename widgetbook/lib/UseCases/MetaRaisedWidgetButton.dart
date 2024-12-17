import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../Tools/ExpandedShowcase.dart';
import '../Tools/WidgetbookTools.dart';

@widgetbook_annotation.UseCase(name: '<normal with ElevatedButtonScheme>', type: MetaRaisedWidgetButton)
Widget buildMetaRaisedWidgetButtonWithElevatedButtonScheme(BuildContext context)
=> ExpandedShowcase(_createElevatedButtonTheme(_createMetaRaisedWidgetButton(context, true)));

@widgetbook_annotation.UseCase(name: '<normal without ElevatedButtonScheme>', type: MetaRaisedWidgetButton)
Widget buildMetaRaisedWidgetButtonWithoutElevatedButtonScheme(BuildContext context)
=> ExpandedShowcase(_createMetaRaisedWidgetButton(context, true));

@widgetbook_annotation.UseCase(name: 'Disabled with ElevatedButtonScheme', type: MetaRaisedWidgetButton)
Widget buildMetaRaisedWidgetButtonDisabledWithElevatedButtonScheme(BuildContext context)
=> ExpandedShowcase(_createElevatedButtonTheme(_createMetaRaisedWidgetButton(context, false)));

@widgetbook_annotation.UseCase(name: 'Disabled without ElevatedButtonScheme', type: MetaRaisedWidgetButton)
Widget buildMetaRaisedWidgetButtonDisabledWithoutElevatedButtonScheme(BuildContext context)
=> ExpandedShowcase(_createMetaRaisedWidgetButton(context, false));

Widget _createElevatedButtonTheme(Widget child)
=> ElevatedButtonTheme(
    data: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.red)),
    child: child
);

Widget _createMetaRaisedWidgetButton(BuildContext context, bool enabled)
=>  MetaRaisedWidgetButton(
    //color: WidgetbookTools.getRedColors(context),
    child: const Text('Text'),
    //textColor: WidgetbookTools.getGreenTextColor(context),
    onPressed: enabled ? WidgetbookTools.dummyOnPressed : null
);
