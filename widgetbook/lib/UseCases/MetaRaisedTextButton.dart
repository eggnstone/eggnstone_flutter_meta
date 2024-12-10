import 'package:eggnstone_flutter_meta/eggnstone_flutter_meta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook_annotation;

import '../Tools/ExpandedShowcase.dart';
import '../Tools/WidgetbookTools.dart';

@widgetbook_annotation.UseCase(name: '<normal with ElevatedButtonScheme>', type: MetaRaisedTextButton)
Widget buildMetaRaisedTextButtonWithElevatedButtonScheme(BuildContext context)
=> ExpandedShowcase(_createElevatedButtonTheme(_createMetaRaisedTextButton(context, true)));

@widgetbook_annotation.UseCase(name: '<normal without ElevatedButtonScheme>', type: MetaRaisedTextButton)
Widget buildMetaRaisedTextButtonWithoutElevatedButtonScheme(BuildContext context)
=> ExpandedShowcase(_createMetaRaisedTextButton(context, true));

@widgetbook_annotation.UseCase(name: 'Disabled with ElevatedButtonScheme', type: MetaRaisedTextButton)
Widget buildMetaRaisedTextButtonDisabledWithElevatedButtonScheme(BuildContext context)
=> ExpandedShowcase(_createElevatedButtonTheme(_createMetaRaisedTextButton(context, false)));

@widgetbook_annotation.UseCase(name: 'Disabled without ElevatedButtonScheme', type: MetaRaisedTextButton)
Widget buildMetaRaisedTextButtonDisabledWithoutElevatedButtonScheme(BuildContext context)
=> ExpandedShowcase(_createMetaRaisedTextButton(context, false));

Widget _createElevatedButtonTheme(Widget child)
=> ElevatedButtonTheme(
    data: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.red)),
    child: child
);

Widget _createMetaRaisedTextButton(BuildContext context, bool enabled)
=>  MetaRaisedTextButton(
    //color: WidgetbookTools.getRedColors(context),
    text: 'Text',
    //textColor: WidgetbookTools.getGreenTextColor(context),
    onPressed: enabled ? WidgetbookTools.dummyOnPressed : null
);
